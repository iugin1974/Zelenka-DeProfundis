svn = \with {
  \autoBeamOff
  instrumentName = #"Sopran"
  shortInstrumentName = #"S."

  #(set-accidental-style 'modern)
}

avn = \with {
  \autoBeamOff
  instrumentName = #"Alt"
  shortInstrumentName = #"A."

  #(set-accidental-style 'modern)
}

tvn = \with {
  \autoBeamOff
  instrumentName = #"Tenor"
  shortInstrumentName = #"T."

  #(set-accidental-style 'modern)
}

bvn = \with {
  \autoBeamOff
  instrumentName = #"Bass"
  shortInstrumentName = #"B."

  #(set-accidental-style 'modern)
}

bIvn = \with {
  \autoBeamOff
  instrumentName = #"Bass 1"
  shortInstrumentName = #"B. 1"

  #(set-accidental-style 'modern)
}

bIIvn = \with {
  \autoBeamOff
  instrumentName = #"Bass 2"
  shortInstrumentName = #"B. 2"

  #(set-accidental-style 'modern)
}

bIIIvn = \with {
  \autoBeamOff
  instrumentName = #"Bass 3"
  shortInstrumentName = #"B. 3"

  #(set-accidental-style 'modern)
}

obvn = \with {
  instrumentName = #"Oboe"
  shortInstrumentName = #"Ob."
  #(set-accidental-style 'modern)
}

obIvn = \with {
  instrumentName = #"Oboe I"
  shortInstrumentName = #"Ob. I"
  #(set-accidental-style 'modern)
}

obIIvn = \with {
  instrumentName = #"Oboe II"
  shortInstrumentName = #"Ob. II"
  #(set-accidental-style 'modern)
}

vlIvn = \with {
  instrumentName = #"Violino I"
  shortInstrumentName = #"Vl. I"
  #(set-accidental-style 'modern)
}

vlIIvn = \with {
  instrumentName = #"Violino II"
  shortInstrumentName = #"Vl. II"
  #(set-accidental-style 'modern)
}

vlavn = \with {
  instrumentName = #"Viola"
  shortInstrumentName = #"Vla."
  #(set-accidental-style 'modern)
}

vcvn = \with {
  instrumentName = #"Violoncello"
  shortInstrumentName = #"Vc."
  #(set-accidental-style 'modern)
}

kbvn = \with {
  instrumentName = #"Kontrabass"
  shortInstrumentName = #"Kb."
  #(set-accidental-style 'modern)
}

tbnIvn = \with {
  instrumentName = #"Trombone 1"
  shortInstrumentName = #"Tbn. 1"

  #(set-accidental-style 'modern)
}

tbnIIvn = \with {
  instrumentName = #"Trombone 2"
  shortInstrumentName = #"Tbn. 2"

  #(set-accidental-style 'modern)
}

tbnIIIvn = \with {
  instrumentName = #"Trombone 3"
  shortInstrumentName = #"Tbn. 3"

  #(set-accidental-style 'modern)
}

setBeams = {
\autoBeamOff
\set melismaBusyProperties = #'(tieMelismaBusy slurMelismaBusy)  
}

defaultBeams = #(define-music-function (m) (ly:music?)
                  #{
                    \autoBeamOn
                    $m
                    \autoBeamOff
                  #}
                  )

tmpVoiceOne = #(define-music-function (m) (ly:music?)
                 #{
                   \voiceOne
                   $m
                   \oneVoice
                 #}
                 )

tastoSolo =
#(define-scheme-function (parser location)()
   #{
     \markup {\italic{Tasto solo}}
   #})

tutti = #(define-scheme-function (parser location)()
           #{
             \markup {\italic{(Tutti)}}
           #})

solo = #(define-scheme-function (parser location)()
          #{
            \markup {\italic{(Solo)}}
          #})

% violoncello  / kontrabass
vc =
#(define-scheme-function (parser location)()
   #{
     \markup { \italic {(Vc.)}}
   #})

kb =
#(define-scheme-function (parser location)()
   #{
     \markup { \italic {(Kb.)}}
   #})

#(define-markup-command (tacet layout props text)
   (markup?)
   (interpret-markup layout props
                     #{
                       \markup{
                         \column{
                           \fill-line { \huge \larger \larger \bold #text }
                           \fill-line{ \large\bold { tacet }}
                           \vspace #3
                         }
                       }
                     #}
                     ))

abo = #(define-music-function (parser location m)(ly:music?)
         #{
           \autoBeamOn
           $m
           \autoBeamOff
         #}
         )

clr = {} %%\once \override Accidental.color = #red

smallStaff = \with {
  fontSize = #-2
  \override StaffSymbol.staff-space = #(magstep -2)
  \override StaffSymbol.thickness = #(magstep -2)
}

noDym = \layout {
  \context {
    \Score
    \omit Dynamics.DynamicText
  }
}