\header {
  title = "BEATA VISCERA"
  tagline = ""
  poet = "Phillip the Chancellor"
  composer = "Pérotin"
}

custom-font = "Georgia"

\paper {
  #(set-paper-size "quarto") % close to mirror size, 190x240mm
  #(define fonts
    (make-pango-font-tree custom-font
                          "Nimbus Sans"
                          "Luxi Mono"
                          (/ staff-height pt 20)))
  #(include-special-characters)
  last-bottom-spacing.basic-distance = 10
  top-margin = 7
  indent = 0
}

\markup "&nbsp;"

\score {
  %{\header {
    piece = \markup { \fontsize #4 \bold "BEATA VISCERA" }
    opus = \markup { "Pérotin" }
  }%}
  <<
  \time 6/8
  %{\hide Score.BarNumber%}
  \set Timing.defaultBarType = "'"
  \new Staff {
    \key g \minor
    %{\override Staff.TimeSignature.color = #white%}
    %{\override Staff.TimeSignature.layer = #-1%}
    \clef "treble" {
      \relative c' {
        \new Voice = "chant" {
          \repeat volta 7 {
            r2 r8 c8 \bar ".|:"
            \tempo "Meditative" 4. = 40 - 46
            g'4. g4 (a8) | bes16 (a16 g8) a8 g4
            f8 | g4. (f8 ees8 d8) | f4 g8 a16 (g16 g8 f8) | g4. r4
            c,8 | g'4. g4 (a8) | bes16 (a16 g8) a8 g4
            f8 | g4. (f8 ees8 d8) | f4 g8 a16 (g16 g8 f8) | g4. r4
            a8 | bes4 c8 bes16 (a16 g8) f8 | ees16 (d16 ees8) f8 ees16 (d16 c8) bes8 |
            c4 d8 ees4 f8 | g4. g8 (a8 bes8) |
            a16 (g16 f8) ees8 f4. (ees8 d8 c8) bes4. | c8 (d8)
            ees8 f4. (ees8 d8 c8) d16 (c16 c8 bes8) c4. r4. \bar "||"
            \tempo "Expansive"
            % O
            c'4. (bes8 a8 g8 f4 g8 a4 bes8 g4 g16 a16 bes4. c4 c8 bes16 a16 g8 f8 ees8 d8 c8 bes4.)
            % mira novitas
            c8 (d8 ees8) f4 (ees8) ees16 (d16 c8) bes8 c4
            % et novum gaudium,
            g8 c4. c8 (c8 d8) ees4. f8 (ees8 d8) ees4. r4
            % matris integrita
            f8 g4 a8 bes16 (a16 g8) a8 g4.
            % post
            g4 (a8 c4. bes8 a8 g8 f4 g8 a4 bes8 g4 a16 bes16 c4 c8 bes16 a16 g8 f8 ees8 d8 c8 bes4.)
            % puerperium.
            c4 d8 ees8 (f8 ees8) d4 (c8)
          }
          \alternative {
            { c4. r4 c8 }
            { c4. r4. \bar "|."}
          }
        }
      }
    }
  }
  \new Lyrics \lyricsto "chant" {
    Be --
    \repeat volta 2 {
      a -- ta __ vi -- sce -- ra
      Ma -- ri -- æ vir -- gi -- nis,
      cu -- ius ad __ u -- be -- ra,
      rex ma -- gni no -- mi -- nis;
      ve -- ste sub al -- te -- ra __ vim ce -- lans
      nu -- mi -- nis, dic -- ta -- vit __
      fe -- de -- ra __ De -- i __ et ho -- mi -- nis.

      O __ mi -- ra __ no -- vi -- tas
      et no -- vum gau -- di -- um,
      ma -- tris in -- te -- gri -- ta,
      post __ pu -- er -- per -- i --
    }
    \alternative { { um. Po -- } { um. } }

  }
  >>
  \midi { }
  \layout {
    #(layout-set-staff-size 16)
    \override LyricText.font-name = \custom-font
    \override Score.BarNumber.font-name = \custom-font
    \override Staff.InstrumentName.font-name = \custom-font

    \context {
      \Score
      \override LyricSpace #'minimum-distance = #5
      \override DynamicText.direction = #UP
      \override DynamicLineSpanner.direction = #UP
    }
  }
}

\markup {
  \abs-fontsize #8.75
  \fill-line {
    \column {
      \line { \italic
        \column {
          \line { Dashes and underscores in the lyrics below indicate }
          \line { melismatic syllables. The chanter should not feel bound to }
          \line { the written rhythm and should sing the strophes freely. }
          \line { Each strophe is followed by the refrain at bar 21. }
        }
      }
      \combine \null \vspace #0.2
      \line { \bold "1."
        \column {
          \line { Be–a–ta_ vi–sce–ra Ma–ri–æ vir–gi–nis }
          \line { cu–ius ad_ u–be–ra, rex ma–gni no–mi–nis; }
          \line { ve–ste sub al–te–ra_ vim ce–lans }
          \line { nu–mi–nis, dic–ta–vit_ fe–de–ra_ De–i_ et ho–mi–nis. }
        }
      }
      \combine \null \vspace #0.2
      \line { \bold "2."
        \column {
          \line { Po–pu–lus_ gen–ti–um se–dens_ in te–ne–bris }
          \line { sur–git ad_ gau–di–um par–tus_ tam ce–le–bris: }
          \line { Iu–de–a_ te–di–um fo–vet_ in }
          \line { la–te–bris, cor ge–rens_ con–sci–um_ de–li–cet fu–ne–bris, }
        }
      }
      \combine \null \vspace #0.2
      \line { \bold "3."
        \column {
          \line { Fer–men–ti_ pes–si–mi qui fe–cam hau–se–rant, }
          \line { ad pa–nis_ a–zi–mi pro–mi–sa pro–pe–rant: }
          \line { sunt De–o pro–xi–mi_ qui lo–nge }
          \line { ste–te–rant, et hi njo–vis–si–mi_ qui pri–mi fu–e–rant. }
        }
      }
    }
    \hspace #0.1 % adds horizontal spacing between columns;
    \column {
      \line { \bold "4."
        \column {
          \line { Par–tum quem_ de–stru–is Iu–de–a mi–se–ra! }
          \line { De quo nos_ ar–gu–es quem do–cet lit–te–ra; }
          \line { si no–va res–pu–is_ cre–de_ vel ve–te–ra, }
          \line { in hoc quem_ as–tru–is_ Chri–stum_ con–si–de–ra. }
        }
      }
      \combine \null \vspace #0.2
      \line { \bold "5."
        \column {
          \line { Te sem–per_ im–pli–cas er–ro–re pa–tri–o; }
          \line { dum vi–am_ in–di–cas er–rans_ in in–vi–o: }
          \line { in his que pre–di–cas,_ ster–nis_ in }
          \line { me–di–o ba–ses pro–phe–ti–cas_ sub_ e–van–ge–li–o. }
        }
      }
      \combine \null \vspace #0.2
      \line { \bold "6."
        \column {
          \line { Le–gis mos–ay–ce clau–sa_ mi–ste–ri–a }
          \line { nux vir–ge_ my–sti–ce na–tu–re ne–sci–a; }
          \line { a–qua de si–li–ce,_ co–lu–pna }
          \line { pre–vi–a, pro–lis do–mi–ni–ce_ si–gna_ sunt_ pro–pe–ra. }
        }
      }
      \combine \null \vspace #0.2
      \line { \bold "7."
        \column {
          \line { So–lem, quem_ li–bre–re, dum pu–rus o–ti–tur }
          \line { in au–ra_ cer–ne–re vi–sus_ non pa–ti–tur, }
          \line { cer–nat a la–te–re_ dum re–per– }
          \line { cu–ti–tur, al–vus pu–er–pe–re,_ qua to–tus_ clau–di–tur. }
        }
     }
   }
  }
}

\version "2.18.2"