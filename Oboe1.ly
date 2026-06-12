\version "2.24.1"
\language "deutsch"
\include "Cover.ily"
\include "Commons.ily"
#(set-global-staff-size 18)
\pointAndClickOff

\paper {
  markup-system-spacing.padding = #5
  scoreTitleMarkup = \markup {
    \column {
      \fill-line { \fontsize #4 \bold \fromproperty #'header:piece }
      \fill-line { \fontsize #2 \bold \fromproperty #'header:instrument }
      \line { \hspace #5 { \fromproperty #'header:meter }}
    }
  }
}

\book {
  \bookOutputName "De Profundis - Oboe I"

  \bookpart {
    \header {
      title = \markup { \fromproperty #'header:myTitle }
      instrument = "Oboe I"
    }
    \markup \null
  } %ends titling


  \bookpart {
    #(define prefix "01/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
        \new Staff
        \new Voice = "Oboe1"
        << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Oboe1.ily") >>
      >>
    }

    \markup\vspace #5

    #(define prefix "01a/")
    \markup {
      \fill-line {
        \center-column {
          \score {
            <<
              <<
                \new MensuralVoice = "Bass" <<
                  \clef "mensural-f"
                  \include #(string-append prefix "BassM.ily")
                >>
              >>
              \new Lyrics \lyricsto "Bass" \include #(string-append prefix "BassT.ily")
            >>
            \layout {
              #(layout-set-staff-size 20)
              \context {
                \MensuralVoice
                \remove Mensural_ligature_engraver
                \consists Ligature_bracket_engraver
              }
            }

          }
        }
      }
    }

    \markup\vspace #5
    \markup\tacet{"02. Quia apud te"}
  }

  \bookpart {
    #(define prefix "03/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
        \new Staff
        \new Voice = "Oboe"
        << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Oboe.ily") >>
      >>
    }
  }

  \bookpart {
    #(define prefix "04/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
        \new Staff
        \new Voice = "SopranM"
        << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "SopranM.ily") >>
        \new Lyrics \lyricsto "SopranM" \include #(string-append prefix "SopranT.ily")
      >>
    }


    \markup\vspace #5

    #(define prefix "04a/")
    \markup {
      \fill-line {
        \center-column {
          \score {
            <<
              <<
                \new MensuralVoice = "Bass" <<
                  \clef "mensural-f"
                  \include #(string-append prefix "BassM.ily")
                >>
              >>
              \new Lyrics \lyricsto "Bass" \include #(string-append prefix "BassT.ily")
            >>
            \layout {
              #(layout-set-staff-size 20)
              \context {
                \MensuralVoice
                \remove Mensural_ligature_engraver
                \consists Ligature_bracket_engraver
              }
            }

          }
        }
      }
    }

    \markup\vspace #5

    #(define prefix "05/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
        \new Staff
        \new Voice = "SopranM"
        << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "SopranM.ily") >>
        \new Lyrics \lyricsto "SopranM" \include #(string-append prefix "SopranT.ily")
      >>
    }
  }
}