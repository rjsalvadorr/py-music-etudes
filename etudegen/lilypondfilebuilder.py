# -*- coding: utf-8 -*-
import os
import shutil
import subprocess

# TODO - add metadata to the generated files. Build version, and possibly date.
#        Look into semantic versioning through this stuff.

class LilypondFileBuilder:
    """
    Builds up étude content for a Lilypond file, using data from the WorkbookBuilder.
    When the content is ready, this class can create a Lilypond file with that content.
    """

    octaveMarking = dict()
    octaveMarking[-1] = ",,,,"
    octaveMarking[0] = ",,,"
    octaveMarking[1] = ",,"
    octaveMarking[2] = ","
    octaveMarking[3] = ""
    octaveMarking[4] = "'"
    octaveMarking[5] = "''"
    octaveMarking[6] = "'''"
    octaveMarking[7] = "''''"
    octaveMarking[8] = "'''''"

    accidentalMarking = dict()
    accidentalMarking[-2] = "ff"
    accidentalMarking[-1] = "f"
    accidentalMarking[0] = ""
    accidentalMarking[1] = "s"
    accidentalMarking[2] = "ss"


    def __init__(self, clef=None, instrument=None, filename=None):
        """
        Basic Constructor
        """
        self.lilypondBlocks = []
        self.clef = clef if clef is not None else "treble"
        self.instrument = instrument if instrument is not None else ""
        self.filename = filename if filename is not None else "result"

        self.forceAccidentals = False
        self.showSolfege = False
        self.generatedFilePaths = []

        self.moduleDir = os.path.dirname(os.path.realpath(__file__))
        self.projectDir = os.path.dirname(self.moduleDir)
        self.outputDir = os.path.join(self.projectDir, "etudegen-output")


    def resetData(self):
        """
        Resets data after a file gets generated.
        """
        self.lilypondBlocks = []

    def _getTimeSignature(self, melodyLength):
        """
        Finds the best time signature for displaying scales.
        """
        mod3 = melodyLength % 3
        mod4 = melodyLength % 4

        if mod4 == 0:
            return 4
        elif mod3 == 0:
            return 3
        else:
            # there's a remainder involved!
            if mod4 >= mod3:
                return 4
            else:
                return 3


    def _convertMingusNoteToLilypond(self, note, duration):
        """
        Converts a Mingus note object to a Lilypond note string.
        """
        accidentalCount = note.name.count("#")
        accidentalCount -= note.name.count("b")

        noteString = note.name.replace("b", "").replace("#", "").lower()
        noteString += LilypondFileBuilder.accidentalMarking[accidentalCount]
        noteString += LilypondFileBuilder.octaveMarking[note.octave]

        if self.forceAccidentals and accidentalCount != 0:
            noteString += "!"

        noteString += str(duration)
        return noteString


    def addLilypondKeyBlock(self, keyData):
        """
        From the given key data, build a Lilypond /score block for that key. That block represents
        scale and arpeggio info for a specific key
        """

        newBlock = "\n"

        if keyData.keyType == "major":
            headerBlock = self._buildLilypondHeadingBlock(keyData.keyName)
            newBlock += self._buildLilypondScaleBlock(keyData.mingusScales[0], keyData.mingusScalesSolfege[0], keyData, headerBlock) + "\n"
        else:
            headerBlock = self._buildLilypondHeadingBlock(keyData.keyName)
            newBlock += self._buildLilypondScaleBlock(keyData.mingusScales[0], keyData.mingusScalesSolfege[0], keyData, headerBlock) + "\n"

            harmonicScaleName = keyData.keyName.replace("minor", "harmonic minor") + " scale"
            headerBlock = self._buildLilypondSubheadingBlock(harmonicScaleName)
            newBlock += self._buildLilypondScaleBlock(keyData.mingusScales[1], keyData.mingusScalesSolfege[1], keyData, headerBlock) + "\n"

        for index, arpeggio in enumerate(keyData.mingusArpeggios):
            headerBlock = self._buildLilypondSubheadingBlock(keyData.chordNames[index])
            newBlock += self._buildLilypondArpeggioBlock(arpeggio, keyData.mingusArpeggiosSolfege[index], keyData, headerBlock) + "\n"

        newBlock += "\pageBreak\n"

        self.lilypondBlocks.append(newBlock)


    def _buildLilypondMainHeaderBlock(self):
        """
        Builds the main header block for a Lilypond file. This contains information like composer, subtitle, and title.
        """

        subTitle = "for " + self.instrument if self.instrument else ""
        headerBlock = "\header {\n    composer = \markup {\"RJ Salvador\"} subtitle = \markup {\"" + subTitle + "\"} title = \markup {\"Scales and Arpeggios\"}\n}"
        return headerBlock


    def _buildLilypondArpeggioBlock(self, melody, melodySolfege, keyData, headerBlock=""):
        """
        From a given melody, build a Lilypond block.
        """
        noteDuration = 8
        totalBars = len(melody) / 8
        barsPerLine = 3
        barCtr = 0
        keyString = "\\key " + keyData.keyTonicLily + " \\" + keyData.keyType + " "

        newBlock = "\score {\n    {\\clef " + self.clef + " \\time 4/4 " + keyString

        for index, note in enumerate(melody):
            remainingBars = totalBars - barCtr

            if index % noteDuration == 0:
                if barCtr % barsPerLine == 0 and remainingBars >= barsPerLine - 1:
                    newBlock += "\\break "
                barCtr += 1

            if self.showSolfege:
                solfegeString = "^\\markup { \\magnify #0.8 " + melodySolfege[index] + "}"
            else:
                solfegeString = ""

            # I'm using 8th notes here, so I'm passing "8" to this method.
            newBlock += self._convertMingusNoteToLilypond(note, noteDuration) + solfegeString + " "

        newBlock += "\\bar \"|.\"}\n    " + headerBlock + "\n}\n"

        return newBlock


    def _buildLilypondScaleBlock(self, scale, scaleSolfege, keyData, headerBlock=""):
        """
        From a given scale, build a Lilypond scale block.
        """
        timeSignatureVal = self._getTimeSignature(len(scale))
        timeSignatureText = " \\time " + str(timeSignatureVal) + "/4 "
        keyString = "\\key " + keyData.keyTonicLily + " \\" + keyData.keyType + " "

        newBlock = "\score {\n    {\\clef " + self.clef + timeSignatureText + keyString

        for index, note in enumerate(scale):
            if self.showSolfege:
                solfegeString = "^\\markup { \\magnify #0.8 " + scaleSolfege[index] + "}"
            else:
                solfegeString = ""

            # I'm using quarter notes here, so I'm passing "4" to this method.
            newBlock += self._convertMingusNoteToLilypond(note, 4) + solfegeString + " "

        newBlock += "\\bar \"|.\"}\n    " + headerBlock + "\n}\n"
        return newBlock


    def _getCleanString(self, text):
        """
        Cleans up accidental signs. Converts "b" and "#" to "♭" and "♯", respectively. Also accounts for double-sharps or double-flats
        """
        dubSharp = u'𝄪'
        dubFlat = u'♭♭'
        sharpSign = u'♯'
        flatSign = u'♭'

        uglyDubSharp = "##"
        uglyDubFlat = "bb"
        uglySharpSign = "#"
        uglyFlatSign = "b"

        cleanStr = text.replace(uglyDubSharp, dubSharp)
        cleanStr = cleanStr.replace(uglyDubFlat, dubFlat)
        cleanStr = cleanStr.replace(uglySharpSign, sharpSign)
        cleanStr = cleanStr.replace(uglyFlatSign, flatSign)

        return cleanStr

    def _buildLilypondHeadingBlock(self, text):
        """
        Using the given text, build a Lilypond heading block. This heading is for each key.
        """
        cleanText = self._getCleanString(text)
        newBlock = "\header {title = \"" + cleanText + "\" piece = \"" + cleanText + " scale\" ##f subtitle = ##f composer = ##f}"
        return newBlock


    def _buildLilypondSubheadingBlock(self, text):
        """
        Using the given text, build a Lilypond subheading block. This subheading will be used for each scale/arpeggio within a key.
        """
        cleanText = self._getCleanString(text)
        newBlock = "\header {piece = \"" + cleanText + "\" title = ##f subtitle = ##f composer = ##f}"
        return newBlock


    def writeLilypondFile(self):
        """
        Writes the content to a Lilypond file.
        If Lilypond is available for use, creates a PDF and shows it to the user.
        """

        inputPath = os.path.join(self.moduleDir, "header.ly")
        lilypondFilePath = os.path.join(self.outputDir, self.filename + ".ly")

        # Create output directory if it doesn't exist
        try:
            os.makedirs(self.outputDir)
        except OSError:
            if not os.path.isdir(self.outputDir):
                raise

        self.lilypondBlocks.append(self._buildLilypondMainHeaderBlock())

        print "Creating workbook for " + self.instrument + "..."

        try:
            shutil.copyfile(inputPath, lilypondFilePath)
            with open(lilypondFilePath, 'a') as outFile:
                for lilyBlock in self.lilypondBlocks:
                    lilyBlock = lilyBlock.encode('utf-8')
                    outFile.write(lilyBlock)

            self.lilypondBlocks = []

        except IOError, e:
            print "ERROR! Unable to copy file. %s" % e
        except:
            print "ERROR! Something went wrong with Lilypond file generation."

        self.generatedFilePaths.append(lilypondFilePath)

        print "Lilypond file generated!\n"


    def buildEtudeDocuments(self):
        """
        If Lilypond is available for use, creates a PDF of all the etudes and shows it to the user.
        """

        for filePath in self.generatedFilePaths:
            try:
                stuff = subprocess.call(["lilypond", "--loglevel=BASIC_PROGRESS", "--output=" + self.outputDir, "--pdf", filePath])
            except:
                print "ERROR! Something went wrong with Lilypond document generation. Check if you have Lilypond installed and available on the path!"
