\header {
  dedication = \markup { \italic \column {
    \line {  \center-align "Arranged for and performed by Musarc in tandem with Rainbows by Sarah Kate Wilson" }
    \combine \null \vspace #0.2
  } }
  title = "BEATA VISCERA IRIDIS"
  subtitle = "for 9 or more singers"
  copyright = "arr. Piper Haywood with Toby O’Connor"
  tagline = ""
  %{poet = "Phillip the Chancellor"%}
  composer = "Pérotin"
  %{arranger = "arr. Piper Haywood"%}
}

glissandoSkipOn = {
  \override NoteColumn.glissando-skip = ##t
  \hide NoteHead
  \override NoteHead.no-ledgers = ##t
}

glissandoSkipOff = {
  \revert NoteColumn.glissando-skip
  \undo \hide NoteHead
  \revert NoteHead.no-ledgers
}

\paper {
  %{top-margin = 15%}
  bottom-margin = 15
  %{system-system-spacing.basic-distance = 18%}
  last-bottom-spacing.basic-distance = 10
  %{score-markup-spacing.basic-distance = 10%}
  #(include-special-characters)
  #(set-paper-size "quarto") % close to mirror size, 190x240mm
  #(define fonts
    (make-pango-font-tree "Georgia"
                          "Nimbus Sans"
                          "Luxi Mono"
                          (/ staff-height pt 20)))
                          
  #(define fonts
    (make-pango-font-tree "Bodoni 72 Oldstyle"
                          "Nimbus Sans"
                          "Luxi Mono"
                          (/ staff-height pt 20)))
}

\markup "&nbsp;"

\score {
  <<
  \time 6/8
  \hide Score.BarNumber
  \set Timing.defaultBarType = "'"
  \new Staff \with {
    instrumentName = "Chant"
  } {
    \key g \minor
    \override Staff.TimeSignature.color = #white
    \override Staff.TimeSignature.layer = #-1
    \clef "treble" {
      \relative c' {
        \new Voice = "chant" {
          \repeat volta 7 {
            r2. r2. r2. r2.
            % Beata Viscera
            \break
            r2^\markup { \italic "Chanters enter at their discretion, offset from one another" } r8 c8 \bar ".|:"
            \tempo "Meditative" 4. = 40 - 46
            g'4. g4 (a8) bes16 (a16 g8) a8 g4
            % Mariæ virginis,
            f8 g4. (f8 ees8 d8) f4 g8 a16 (g16 g8 f8) g4. r4
            % cuius ad ubera,
            c,8 g'4. g4 (a8) bes16 (a16 g8) a8 g4
            % rex magni nominis;
            f8 g4. (f8 ees8 d8) f4 g8 a16 (g16 g8 f8) g4. r4
            % veste sub altera vim celans
            a8 bes4 c8 bes16 (a16 g8) f8 ees16 (d16 ees8) f8 ees16 (d16 c8) bes8
            % numinis, dictavit
            c4 d8 ees4 f8 g4. g8 (a8 bes8)
            % federa Dei
            a16 (g16 f8) ees8 f4. (ees8 d8 c8) bes4. c8 (d8)
            % et hominis.
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
            { c4. r4. r2. r2. r2. r2. }
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
  \new Staff \with {
    instrumentName = "DRONE"
  } {
    \key g \minor
    \override Staff.TimeSignature.color = #white
    \override Staff.TimeSignature.layer = #-1
    \clef "treble_8" {
      \relative c' {
        <<
        \new Voice = "drone1"
        \relative {
          \voiceTwo
          \hideNotes
          bes2.\ppp^\markup { \italic "Singers gradually coalesce on tonic, c.15–60\"" }
          \glissando % TODO use glissandomap to add further
          \glissandoSkipOn
          c,2.
          \glissandoSkipOff
          \unHideNotes
          c2.\< (c2.)
          (c2.\!)^\markup { \italic "Drone singers maintain harmonic basis and may reflect chant phrases ad libitum" } (c2.) (c2.) (c2.) (c2.)
          (c2.) (c2.) (c2.) (c2.) (c2.) (c2.)
          (c2.) (c2.) (c2.) (c2.) (c2.) (c2.)
          (c2.) (c2.) (c2.) (c2.) (c2.) (c2.)
          (c2.) (c2.) (c2.) (c2.) (c2.) (c2.)
          (c2.) (c2.) (c2.) (c2.) (c2.) (c2.)
          (c2.) (c2.) (c2.) (c2.) (c2.)
          (\break c2.\>) (c2.) (c2.\ppp\!) (c2.) ^\markup{ \italic "ad infinitum" }
          \bar "|."
        }
        \new Voice = "drone2"
        \relative {
          \voiceOne
          \hideNotes
          r2. r2. r2. r2. r2.
          r2. r4.
          \unHideNotes
          bes16 a16 g8 a8 g4.
          \hideNotes
          r4. r2.
          \unHideNotes
        }
        >>
      }
      
    }
  }

  >>
  \midi { }
  \layout {
    %{#(layout-set-staff-size 16)%}
    \context {
      \Score
      \override LyricSpace #'minimum-distance = #5
      \override DynamicText.direction = #UP
      \override DynamicLineSpanner.direction = #UP
    }
    \context {
      \Staff
      % these lines prevent empty staves from being printed
      \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}

\markup {
  \abs-fontsize #10
  \fill-line {
    \column {
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
      \combine \null \vspace #0.2
      \line { \bold "4."
        \column {
          \line { Par–tum quem_ de–stru–is Iu–de–a mi–se–ra! }
          \line { De quo nos_ ar–gu–es quem do–cet lit–te–ra; }
          \line { si no–va res–pu–is_ cre–de_ vel ve–te–ra, }
          \line { in hoc quem_ as–tru–is_ Chri–stum_ con–si–de–ra. }
        }
      }
    }
    \hspace #0.1 % adds horizontal spacing between columns;
    \column {
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