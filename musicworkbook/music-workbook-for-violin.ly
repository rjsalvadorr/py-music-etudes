% This will be used to create a lilypond file

\version "2.18.2"
\language "english"

#(set-global-staff-size 20)

\layout {
    indent = 0\cm
    \override Staff.TimeSignature #'stencil = ##f
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
}

\paper {
    #(set-paper-size "letter")
    top-margin = 0.5\in
    right-margin = 0.5\in
    bottom-margin = 0.5\in
    left-margin = 0.5\in

    print-all-headers = ##t
    ragged-right = ##f
}

\score {
    {\clef treble \time 3/4 \key c \major g4 af4 bf4 c'4 d'4 ef'4 f'4 g'4 af'4 bf'4 c''4 d''4 ef''4 f''4 g''4 af''4 bf''4 c'''4 \bar "|."}
    \header {title = "E♭ major" piece = "E♭ major scale" ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break g8 bf8 ef'8 bf8 ef'8 bf8 g8 ef'8 bf8 ef'8 g'8 ef'8 g'8 ef'8 bf8 g'8 ef'8 g'8 bf'8 g'8 bf'8 g'8 ef'8 bf'8 \break g'8 bf'8 ef''8 bf'8 ef''8 bf'8 g'8 ef''8 bf'8 ef''8 g''8 ef''8 g''8 ef''8 bf'8 g''8 ef''8 g''8 bf''8 g''8 bf''8 g''8 ef''8 bf''8 \bar "|."}
    \header {piece = "E♭ (I)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break bf8 d'8 f'8 d'8 f'8 d'8 bf8 f'8 d'8 f'8 bf'8 f'8 bf'8 f'8 d'8 bf'8 f'8 bf'8 d''8 bf'8 d''8 bf'8 f'8 d''8 \break bf'8 d''8 f''8 d''8 f''8 d''8 bf'8 f''8 d''8 f''8 bf''8 f''8 bf''8 f''8 d''8 bf''8 \bar "|."}
    \header {piece = "B♭ (V)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break af8 d'8 f'8 d'8 f'8 d'8 af8 f'8 d'8 f'8 af'8 f'8 af'8 f'8 d'8 af'8 f'8 af'8 d''8 af'8 d''8 af'8 f'8 d''8 \break af'8 d''8 f''8 d''8 f''8 d''8 af'8 f''8 d''8 f''8 af''8 f''8 af''8 f''8 d''8 af''8 \bar "|."}
    \header {piece = "Ddim (vii°)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break af8 c'8 ef'8 c'8 ef'8 c'8 af8 ef'8 c'8 ef'8 af'8 ef'8 af'8 ef'8 c'8 af'8 ef'8 af'8 c''8 af'8 c''8 af'8 ef'8 c''8 \break af'8 c''8 ef''8 c''8 ef''8 c''8 af'8 ef''8 c''8 ef''8 af''8 ef''8 af''8 ef''8 c''8 af''8 ef''8 af''8 c'''8 af''8 c'''8 af''8 ef''8 c'''8 \bar "|."}
    \header {piece = "A♭ (IV)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break af8 c'8 f'8 c'8 f'8 c'8 af8 f'8 c'8 f'8 af'8 f'8 af'8 f'8 c'8 af'8 f'8 af'8 c''8 af'8 c''8 af'8 f'8 c''8 \break af'8 c''8 f''8 c''8 f''8 c''8 af'8 f''8 c''8 f''8 af''8 f''8 af''8 f''8 c''8 af''8 f''8 af''8 c'''8 af''8 c'''8 af''8 f''8 c'''8 \bar "|."}
    \header {piece = "Fm (ii)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break g8 c'8 ef'8 c'8 ef'8 c'8 g8 ef'8 c'8 ef'8 g'8 ef'8 g'8 ef'8 c'8 g'8 ef'8 g'8 c''8 g'8 c''8 g'8 ef'8 c''8 \break g'8 c''8 ef''8 c''8 ef''8 c''8 g'8 ef''8 c''8 ef''8 g''8 ef''8 g''8 ef''8 c''8 g''8 ef''8 g''8 c'''8 g''8 c'''8 g''8 ef''8 c'''8 \bar "|."}
    \header {piece = "Cm (vi)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break g8 bf8 d'8 bf8 d'8 bf8 g8 d'8 bf8 d'8 g'8 d'8 g'8 d'8 bf8 g'8 d'8 g'8 bf'8 g'8 bf'8 g'8 d'8 bf'8 \break g'8 bf'8 d''8 bf'8 d''8 bf'8 g'8 d''8 bf'8 d''8 g''8 d''8 g''8 d''8 bf'8 g''8 d''8 g''8 bf''8 g''8 bf''8 g''8 d''8 bf''8 \bar "|."}
    \header {piece = "Gm (iii)" title = ##f subtitle = ##f composer = ##f}
}

\pageBreak

\score {
    {\clef treble \time 3/4 \key c \major g4 a4 bf4 c'4 d'4 ef'4 f'4 g'4 a'4 bf'4 c''4 d''4 ef''4 f''4 g''4 a''4 bf''4 c'''4 \bar "|."}
    \header {title = "B♭ major" piece = "B♭ major scale" ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break bf8 d'8 f'8 d'8 f'8 d'8 bf8 f'8 d'8 f'8 bf'8 f'8 bf'8 f'8 d'8 bf'8 f'8 bf'8 d''8 bf'8 d''8 bf'8 f'8 d''8 \break bf'8 d''8 f''8 d''8 f''8 d''8 bf'8 f''8 d''8 f''8 bf''8 f''8 bf''8 f''8 d''8 bf''8 \bar "|."}
    \header {piece = "B♭ (I)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break a8 c'8 f'8 c'8 f'8 c'8 a8 f'8 c'8 f'8 a'8 f'8 a'8 f'8 c'8 a'8 f'8 a'8 c''8 a'8 c''8 a'8 f'8 c''8 \break a'8 c''8 f''8 c''8 f''8 c''8 a'8 f''8 c''8 f''8 a''8 f''8 a''8 f''8 c''8 a''8 f''8 a''8 c'''8 a''8 c'''8 a''8 f''8 c'''8 \bar "|."}
    \header {piece = "F (V)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break a8 c'8 ef'8 c'8 ef'8 c'8 a8 ef'8 c'8 ef'8 a'8 ef'8 a'8 ef'8 c'8 a'8 ef'8 a'8 c''8 a'8 c''8 a'8 ef'8 c''8 \break a'8 c''8 ef''8 c''8 ef''8 c''8 a'8 ef''8 c''8 ef''8 a''8 ef''8 a''8 ef''8 c''8 a''8 ef''8 a''8 c'''8 a''8 c'''8 a''8 ef''8 c'''8 \bar "|."}
    \header {piece = "Adim (vii°)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break g8 bf8 ef'8 bf8 ef'8 bf8 g8 ef'8 bf8 ef'8 g'8 ef'8 g'8 ef'8 bf8 g'8 ef'8 g'8 bf'8 g'8 bf'8 g'8 ef'8 bf'8 \break g'8 bf'8 ef''8 bf'8 ef''8 bf'8 g'8 ef''8 bf'8 ef''8 g''8 ef''8 g''8 ef''8 bf'8 g''8 ef''8 g''8 bf''8 g''8 bf''8 g''8 ef''8 bf''8 \bar "|."}
    \header {piece = "E♭ (IV)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break g8 c'8 ef'8 c'8 ef'8 c'8 g8 ef'8 c'8 ef'8 g'8 ef'8 g'8 ef'8 c'8 g'8 ef'8 g'8 c''8 g'8 c''8 g'8 ef'8 c''8 \break g'8 c''8 ef''8 c''8 ef''8 c''8 g'8 ef''8 c''8 ef''8 g''8 ef''8 g''8 ef''8 c''8 g''8 ef''8 g''8 c'''8 g''8 c'''8 g''8 ef''8 c'''8 \bar "|."}
    \header {piece = "Cm (ii)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break g8 bf8 d'8 bf8 d'8 bf8 g8 d'8 bf8 d'8 g'8 d'8 g'8 d'8 bf8 g'8 d'8 g'8 bf'8 g'8 bf'8 g'8 d'8 bf'8 \break g'8 bf'8 d''8 bf'8 d''8 bf'8 g'8 d''8 bf'8 d''8 g''8 d''8 g''8 d''8 bf'8 g''8 d''8 g''8 bf''8 g''8 bf''8 g''8 d''8 bf''8 \bar "|."}
    \header {piece = "Gm (vi)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break a8 d'8 f'8 d'8 f'8 d'8 a8 f'8 d'8 f'8 a'8 f'8 a'8 f'8 d'8 a'8 f'8 a'8 d''8 a'8 d''8 a'8 f'8 d''8 \break a'8 d''8 f''8 d''8 f''8 d''8 a'8 f''8 d''8 f''8 a''8 f''8 a''8 f''8 d''8 a''8 \bar "|."}
    \header {piece = "Dm (iii)" title = ##f subtitle = ##f composer = ##f}
}

\pageBreak

\score {
    {\clef treble \time 3/4 \key c \major g4 a4 bf4 c'4 d'4 e'4 f'4 g'4 a'4 bf'4 c''4 d''4 e''4 f''4 g''4 a''4 bf''4 c'''4 \bar "|."}
    \header {title = "F major" piece = "F major scale" ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break a8 c'8 f'8 c'8 f'8 c'8 a8 f'8 c'8 f'8 a'8 f'8 a'8 f'8 c'8 a'8 f'8 a'8 c''8 a'8 c''8 a'8 f'8 c''8 \break a'8 c''8 f''8 c''8 f''8 c''8 a'8 f''8 c''8 f''8 a''8 f''8 a''8 f''8 c''8 a''8 f''8 a''8 c'''8 a''8 c'''8 a''8 f''8 c'''8 \bar "|."}
    \header {piece = "F (I)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break g8 c'8 e'8 c'8 e'8 c'8 g8 e'8 c'8 e'8 g'8 e'8 g'8 e'8 c'8 g'8 e'8 g'8 c''8 g'8 c''8 g'8 e'8 c''8 \break g'8 c''8 e''8 c''8 e''8 c''8 g'8 e''8 c''8 e''8 g''8 e''8 g''8 e''8 c''8 g''8 e''8 g''8 c'''8 g''8 c'''8 g''8 e''8 c'''8 \bar "|."}
    \header {piece = "C (V)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break g8 bf8 e'8 bf8 e'8 bf8 g8 e'8 bf8 e'8 g'8 e'8 g'8 e'8 bf8 g'8 e'8 g'8 bf'8 g'8 bf'8 g'8 e'8 bf'8 \break g'8 bf'8 e''8 bf'8 e''8 bf'8 g'8 e''8 bf'8 e''8 g''8 e''8 g''8 e''8 bf'8 g''8 e''8 g''8 bf''8 g''8 bf''8 g''8 e''8 bf''8 \bar "|."}
    \header {piece = "Edim (vii°)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break bf8 d'8 f'8 d'8 f'8 d'8 bf8 f'8 d'8 f'8 bf'8 f'8 bf'8 f'8 d'8 bf'8 f'8 bf'8 d''8 bf'8 d''8 bf'8 f'8 d''8 \break bf'8 d''8 f''8 d''8 f''8 d''8 bf'8 f''8 d''8 f''8 bf''8 f''8 bf''8 f''8 d''8 bf''8 \bar "|."}
    \header {piece = "B♭ (IV)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break g8 bf8 d'8 bf8 d'8 bf8 g8 d'8 bf8 d'8 g'8 d'8 g'8 d'8 bf8 g'8 d'8 g'8 bf'8 g'8 bf'8 g'8 d'8 bf'8 \break g'8 bf'8 d''8 bf'8 d''8 bf'8 g'8 d''8 bf'8 d''8 g''8 d''8 g''8 d''8 bf'8 g''8 d''8 g''8 bf''8 g''8 bf''8 g''8 d''8 bf''8 \bar "|."}
    \header {piece = "Gm (ii)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break a8 d'8 f'8 d'8 f'8 d'8 a8 f'8 d'8 f'8 a'8 f'8 a'8 f'8 d'8 a'8 f'8 a'8 d''8 a'8 d''8 a'8 f'8 d''8 \break a'8 d''8 f''8 d''8 f''8 d''8 a'8 f''8 d''8 f''8 a''8 f''8 a''8 f''8 d''8 a''8 \bar "|."}
    \header {piece = "Dm (vi)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break a8 c'8 e'8 c'8 e'8 c'8 a8 e'8 c'8 e'8 a'8 e'8 a'8 e'8 c'8 a'8 e'8 a'8 c''8 a'8 c''8 a'8 e'8 c''8 \break a'8 c''8 e''8 c''8 e''8 c''8 a'8 e''8 c''8 e''8 a''8 e''8 a''8 e''8 c''8 a''8 e''8 a''8 c'''8 a''8 c'''8 a''8 e''8 c'''8 \bar "|."}
    \header {piece = "Am (iii)" title = ##f subtitle = ##f composer = ##f}
}

\pageBreak

\score {
    {\clef treble \time 3/4 \key c \major g4 af4 bf4 c'4 d'4 ef'4 f'4 g'4 af'4 bf'4 c''4 d''4 ef''4 f''4 g''4 af''4 bf''4 c'''4 \bar "|."}
    \header {title = "C minor" piece = "C minor scale" ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 3/4 \key c \major g4 af4 b4 c'4 d'4 ef'4 f'4 g'4 af'4 b'4 c''4 d''4 ef''4 f''4 g''4 af''4 b''4 c'''4 \bar "|."}
    \header {piece = "C harmonic minor scale" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break g8 c'8 ef'8 c'8 ef'8 c'8 g8 ef'8 c'8 ef'8 g'8 ef'8 g'8 ef'8 c'8 g'8 ef'8 g'8 c''8 g'8 c''8 g'8 ef'8 c''8 \break g'8 c''8 ef''8 c''8 ef''8 c''8 g'8 ef''8 c''8 ef''8 g''8 ef''8 g''8 ef''8 c''8 g''8 ef''8 g''8 c'''8 g''8 c'''8 g''8 ef''8 c'''8 \bar "|."}
    \header {piece = "Cm (i)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break g8 b8 d'8 b8 d'8 b8 g8 d'8 b8 d'8 g'8 d'8 g'8 d'8 b8 g'8 d'8 g'8 b'8 g'8 b'8 g'8 d'8 b'8 \break g'8 b'8 d''8 b'8 d''8 b'8 g'8 d''8 b'8 d''8 g''8 d''8 g''8 d''8 b'8 g''8 d''8 g''8 b''8 g''8 b''8 g''8 d''8 b''8 \bar "|."}
    \header {piece = "G (V)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break g8 bf8 d'8 bf8 d'8 bf8 g8 d'8 bf8 d'8 g'8 d'8 g'8 d'8 bf8 g'8 d'8 g'8 bf'8 g'8 bf'8 g'8 d'8 bf'8 \break g'8 bf'8 d''8 bf'8 d''8 bf'8 g'8 d''8 bf'8 d''8 g''8 d''8 g''8 d''8 bf'8 g''8 d''8 g''8 bf''8 g''8 bf''8 g''8 d''8 bf''8 \bar "|."}
    \header {piece = "Gm (v)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break b8 d'8 f'8 d'8 f'8 d'8 b8 f'8 d'8 f'8 b'8 f'8 b'8 f'8 d'8 b'8 f'8 b'8 d''8 b'8 d''8 b'8 f'8 d''8 \break b'8 d''8 f''8 d''8 f''8 d''8 b'8 f''8 d''8 f''8 b''8 f''8 b''8 f''8 d''8 b''8 \bar "|."}
    \header {piece = "Bdim (vii°)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break bf8 d'8 f'8 d'8 f'8 d'8 bf8 f'8 d'8 f'8 bf'8 f'8 bf'8 f'8 d'8 bf'8 f'8 bf'8 d''8 bf'8 d''8 bf'8 f'8 d''8 \break bf'8 d''8 f''8 d''8 f''8 d''8 bf'8 f''8 d''8 f''8 bf''8 f''8 bf''8 f''8 d''8 bf''8 \bar "|."}
    \header {piece = "B♭ (VII)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break af8 c'8 f'8 c'8 f'8 c'8 af8 f'8 c'8 f'8 af'8 f'8 af'8 f'8 c'8 af'8 f'8 af'8 c''8 af'8 c''8 af'8 f'8 c''8 \break af'8 c''8 f''8 c''8 f''8 c''8 af'8 f''8 c''8 f''8 af''8 f''8 af''8 f''8 c''8 af''8 f''8 af''8 c'''8 af''8 c'''8 af''8 f''8 c'''8 \bar "|."}
    \header {piece = "Fm (iv)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break af8 d'8 f'8 d'8 f'8 d'8 af8 f'8 d'8 f'8 af'8 f'8 af'8 f'8 d'8 af'8 f'8 af'8 d''8 af'8 d''8 af'8 f'8 d''8 \break af'8 d''8 f''8 d''8 f''8 d''8 af'8 f''8 d''8 f''8 af''8 f''8 af''8 f''8 d''8 af''8 \bar "|."}
    \header {piece = "Ddim (ii°)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break af8 c'8 ef'8 c'8 ef'8 c'8 af8 ef'8 c'8 ef'8 af'8 ef'8 af'8 ef'8 c'8 af'8 ef'8 af'8 c''8 af'8 c''8 af'8 ef'8 c''8 \break af'8 c''8 ef''8 c''8 ef''8 c''8 af'8 ef''8 c''8 ef''8 af''8 ef''8 af''8 ef''8 c''8 af''8 ef''8 af''8 c'''8 af''8 c'''8 af''8 ef''8 c'''8 \bar "|."}
    \header {piece = "A♭ (VI)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break g8 b8 ef'8 b8 ef'8 b8 g8 ef'8 b8 ef'8 g'8 ef'8 g'8 ef'8 b8 g'8 ef'8 g'8 b'8 g'8 b'8 g'8 ef'8 b'8 \break g'8 b'8 ef''8 b'8 ef''8 b'8 g'8 ef''8 b'8 ef''8 g''8 ef''8 g''8 ef''8 b'8 g''8 ef''8 g''8 b''8 g''8 b''8 g''8 ef''8 b''8 \bar "|."}
    \header {piece = "E♭+ (III+)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break g8 bf8 ef'8 bf8 ef'8 bf8 g8 ef'8 bf8 ef'8 g'8 ef'8 g'8 ef'8 bf8 g'8 ef'8 g'8 bf'8 g'8 bf'8 g'8 ef'8 bf'8 \break g'8 bf'8 ef''8 bf'8 ef''8 bf'8 g'8 ef''8 bf'8 ef''8 g''8 ef''8 g''8 ef''8 bf'8 g''8 ef''8 g''8 bf''8 g''8 bf''8 g''8 ef''8 bf''8 \bar "|."}
    \header {piece = "E♭ (III)" title = ##f subtitle = ##f composer = ##f}
}

\pageBreak

\score {
    {\clef treble \time 3/4 \key c \major g4 a4 bf4 c'4 d'4 ef'4 f'4 g'4 a'4 bf'4 c''4 d''4 ef''4 f''4 g''4 a''4 bf''4 c'''4 \bar "|."}
    \header {title = "G minor" piece = "G minor scale" ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 3/4 \key c \major g4 a4 bf4 c'4 d'4 ef'4 fs'4 g'4 a'4 bf'4 c''4 d''4 ef''4 fs''4 g''4 a''4 bf''4 c'''4 \bar "|."}
    \header {piece = "G harmonic minor scale" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break g8 bf8 d'8 bf8 d'8 bf8 g8 d'8 bf8 d'8 g'8 d'8 g'8 d'8 bf8 g'8 d'8 g'8 bf'8 g'8 bf'8 g'8 d'8 bf'8 \break g'8 bf'8 d''8 bf'8 d''8 bf'8 g'8 d''8 bf'8 d''8 g''8 d''8 g''8 d''8 bf'8 g''8 d''8 g''8 bf''8 g''8 bf''8 g''8 d''8 bf''8 \bar "|."}
    \header {piece = "Gm (i)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break a8 d'8 fs'8 d'8 fs'8 d'8 a8 fs'8 d'8 fs'8 a'8 fs'8 a'8 fs'8 d'8 a'8 fs'8 a'8 d''8 a'8 d''8 a'8 fs'8 d''8 \break a'8 d''8 fs''8 d''8 fs''8 d''8 a'8 fs''8 d''8 fs''8 a''8 fs''8 a''8 fs''8 d''8 a''8 \bar "|."}
    \header {piece = "D (V)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break a8 d'8 f'8 d'8 f'8 d'8 a8 f'8 d'8 f'8 a'8 f'8 a'8 f'8 d'8 a'8 f'8 a'8 d''8 a'8 d''8 a'8 f'8 d''8 \break a'8 d''8 f''8 d''8 f''8 d''8 a'8 f''8 d''8 f''8 a''8 f''8 a''8 f''8 d''8 a''8 \bar "|."}
    \header {piece = "Dm (v)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break a8 c'8 fs'8 c'8 fs'8 c'8 a8 fs'8 c'8 fs'8 a'8 fs'8 a'8 fs'8 c'8 a'8 fs'8 a'8 c''8 a'8 c''8 a'8 fs'8 c''8 \break a'8 c''8 fs''8 c''8 fs''8 c''8 a'8 fs''8 c''8 fs''8 a''8 fs''8 a''8 fs''8 c''8 a''8 fs''8 a''8 c'''8 a''8 c'''8 a''8 fs''8 c'''8 \bar "|."}
    \header {piece = "F♯dim (vii°)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break a8 c'8 f'8 c'8 f'8 c'8 a8 f'8 c'8 f'8 a'8 f'8 a'8 f'8 c'8 a'8 f'8 a'8 c''8 a'8 c''8 a'8 f'8 c''8 \break a'8 c''8 f''8 c''8 f''8 c''8 a'8 f''8 c''8 f''8 a''8 f''8 a''8 f''8 c''8 a''8 f''8 a''8 c'''8 a''8 c'''8 a''8 f''8 c'''8 \bar "|."}
    \header {piece = "F (VII)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break g8 c'8 ef'8 c'8 ef'8 c'8 g8 ef'8 c'8 ef'8 g'8 ef'8 g'8 ef'8 c'8 g'8 ef'8 g'8 c''8 g'8 c''8 g'8 ef'8 c''8 \break g'8 c''8 ef''8 c''8 ef''8 c''8 g'8 ef''8 c''8 ef''8 g''8 ef''8 g''8 ef''8 c''8 g''8 ef''8 g''8 c'''8 g''8 c'''8 g''8 ef''8 c'''8 \bar "|."}
    \header {piece = "Cm (iv)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break a8 c'8 ef'8 c'8 ef'8 c'8 a8 ef'8 c'8 ef'8 a'8 ef'8 a'8 ef'8 c'8 a'8 ef'8 a'8 c''8 a'8 c''8 a'8 ef'8 c''8 \break a'8 c''8 ef''8 c''8 ef''8 c''8 a'8 ef''8 c''8 ef''8 a''8 ef''8 a''8 ef''8 c''8 a''8 ef''8 a''8 c'''8 a''8 c'''8 a''8 ef''8 c'''8 \bar "|."}
    \header {piece = "Adim (ii°)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break g8 bf8 ef'8 bf8 ef'8 bf8 g8 ef'8 bf8 ef'8 g'8 ef'8 g'8 ef'8 bf8 g'8 ef'8 g'8 bf'8 g'8 bf'8 g'8 ef'8 bf'8 \break g'8 bf'8 ef''8 bf'8 ef''8 bf'8 g'8 ef''8 bf'8 ef''8 g''8 ef''8 g''8 ef''8 bf'8 g''8 ef''8 g''8 bf''8 g''8 bf''8 g''8 ef''8 bf''8 \bar "|."}
    \header {piece = "E♭ (VI)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break bf8 d'8 fs'8 d'8 fs'8 d'8 bf8 fs'8 d'8 fs'8 bf'8 fs'8 bf'8 fs'8 d'8 bf'8 fs'8 bf'8 d''8 bf'8 d''8 bf'8 fs'8 d''8 \break bf'8 d''8 fs''8 d''8 fs''8 d''8 bf'8 fs''8 d''8 fs''8 bf''8 fs''8 bf''8 fs''8 d''8 bf''8 \bar "|."}
    \header {piece = "B♭+ (III+)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break bf8 d'8 f'8 d'8 f'8 d'8 bf8 f'8 d'8 f'8 bf'8 f'8 bf'8 f'8 d'8 bf'8 f'8 bf'8 d''8 bf'8 d''8 bf'8 f'8 d''8 \break bf'8 d''8 f''8 d''8 f''8 d''8 bf'8 f''8 d''8 f''8 bf''8 f''8 bf''8 f''8 d''8 bf''8 \bar "|."}
    \header {piece = "B♭ (III)" title = ##f subtitle = ##f composer = ##f}
}

\pageBreak

\score {
    {\clef treble \time 3/4 \key c \major g4 a4 bf4 c'4 d'4 e'4 f'4 g'4 a'4 bf'4 c''4 d''4 e''4 f''4 g''4 a''4 bf''4 c'''4 \bar "|."}
    \header {title = "D minor" piece = "D minor scale" ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 3/4 \key c \major g4 a4 bf4 cs'4 d'4 e'4 f'4 g'4 a'4 bf'4 cs''4 d''4 e''4 f''4 g''4 a''4 bf''4 \bar "|."}
    \header {piece = "D harmonic minor scale" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break a8 d'8 f'8 d'8 f'8 d'8 a8 f'8 d'8 f'8 a'8 f'8 a'8 f'8 d'8 a'8 f'8 a'8 d''8 a'8 d''8 a'8 f'8 d''8 \break a'8 d''8 f''8 d''8 f''8 d''8 a'8 f''8 d''8 f''8 a''8 f''8 a''8 f''8 d''8 a''8 \bar "|."}
    \header {piece = "Dm (i)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break a8 cs'8 e'8 cs'8 e'8 cs'8 a8 e'8 cs'8 e'8 a'8 e'8 a'8 e'8 cs'8 a'8 e'8 a'8 cs''8 a'8 cs''8 a'8 e'8 cs''8 \break a'8 cs''8 e''8 cs''8 e''8 cs''8 a'8 e''8 cs''8 e''8 a''8 e''8 a''8 e''8 cs''8 a''8 \bar "|."}
    \header {piece = "A (V)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break a8 c'8 e'8 c'8 e'8 c'8 a8 e'8 c'8 e'8 a'8 e'8 a'8 e'8 c'8 a'8 e'8 a'8 c''8 a'8 c''8 a'8 e'8 c''8 \break a'8 c''8 e''8 c''8 e''8 c''8 a'8 e''8 c''8 e''8 a''8 e''8 a''8 e''8 c''8 a''8 e''8 a''8 c'''8 a''8 c'''8 a''8 e''8 c'''8 \bar "|."}
    \header {piece = "Am (v)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break g8 cs'8 e'8 cs'8 e'8 cs'8 g8 e'8 cs'8 e'8 g'8 e'8 g'8 e'8 cs'8 g'8 e'8 g'8 cs''8 g'8 cs''8 g'8 e'8 cs''8 \break g'8 cs''8 e''8 cs''8 e''8 cs''8 g'8 e''8 cs''8 e''8 g''8 e''8 g''8 e''8 cs''8 g''8 \bar "|."}
    \header {piece = "C♯dim (vii°)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break g8 c'8 e'8 c'8 e'8 c'8 g8 e'8 c'8 e'8 g'8 e'8 g'8 e'8 c'8 g'8 e'8 g'8 c''8 g'8 c''8 g'8 e'8 c''8 \break g'8 c''8 e''8 c''8 e''8 c''8 g'8 e''8 c''8 e''8 g''8 e''8 g''8 e''8 c''8 g''8 e''8 g''8 c'''8 g''8 c'''8 g''8 e''8 c'''8 \bar "|."}
    \header {piece = "C (VII)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break g8 bf8 d'8 bf8 d'8 bf8 g8 d'8 bf8 d'8 g'8 d'8 g'8 d'8 bf8 g'8 d'8 g'8 bf'8 g'8 bf'8 g'8 d'8 bf'8 \break g'8 bf'8 d''8 bf'8 d''8 bf'8 g'8 d''8 bf'8 d''8 g''8 d''8 g''8 d''8 bf'8 g''8 d''8 g''8 bf''8 g''8 bf''8 g''8 d''8 bf''8 \bar "|."}
    \header {piece = "Gm (iv)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break g8 bf8 e'8 bf8 e'8 bf8 g8 e'8 bf8 e'8 g'8 e'8 g'8 e'8 bf8 g'8 e'8 g'8 bf'8 g'8 bf'8 g'8 e'8 bf'8 \break g'8 bf'8 e''8 bf'8 e''8 bf'8 g'8 e''8 bf'8 e''8 g''8 e''8 g''8 e''8 bf'8 g''8 e''8 g''8 bf''8 g''8 bf''8 g''8 e''8 bf''8 \bar "|."}
    \header {piece = "Edim (ii°)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break bf8 d'8 f'8 d'8 f'8 d'8 bf8 f'8 d'8 f'8 bf'8 f'8 bf'8 f'8 d'8 bf'8 f'8 bf'8 d''8 bf'8 d''8 bf'8 f'8 d''8 \break bf'8 d''8 f''8 d''8 f''8 d''8 bf'8 f''8 d''8 f''8 bf''8 f''8 bf''8 f''8 d''8 bf''8 \bar "|."}
    \header {piece = "B♭ (VI)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break a8 cs'8 f'8 cs'8 f'8 cs'8 a8 f'8 cs'8 f'8 a'8 f'8 a'8 f'8 cs'8 a'8 f'8 a'8 cs''8 a'8 cs''8 a'8 f'8 cs''8 \break a'8 cs''8 f''8 cs''8 f''8 cs''8 a'8 f''8 cs''8 f''8 a''8 f''8 a''8 f''8 cs''8 a''8 \bar "|."}
    \header {piece = "F+ (III+)" title = ##f subtitle = ##f composer = ##f}
}

\score {
    {\clef treble \time 4/4 \key c \major \break a8 c'8 f'8 c'8 f'8 c'8 a8 f'8 c'8 f'8 a'8 f'8 a'8 f'8 c'8 a'8 f'8 a'8 c''8 a'8 c''8 a'8 f'8 c''8 \break a'8 c''8 f''8 c''8 f''8 c''8 a'8 f''8 c''8 f''8 a''8 f''8 a''8 f''8 c''8 a''8 f''8 a''8 c'''8 a''8 c'''8 a''8 f''8 c'''8 \bar "|."}
    \header {piece = "F (III)" title = ##f subtitle = ##f composer = ##f}
}

\pageBreak
\header {
    composer = \markup {"RJ Salvador"} subtitle = \markup {"for violin"} title = \markup {"Scales and Arpeggios"}
}