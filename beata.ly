\header {
  title = "BEATA VISCERA"
  subtitle = "for 9 or more singers with mirrors"
  copyright = "arr. Piper Haywood with Toby O’Connor"
  tagline = ""
  %{poet = "Phillip the Chancellor"%}
  composer = "Pérotin"
  %{arranger = "arr. Piper Haywood"%}
}

% TODO add tremolos ?
% TODO make ambitus look a little better?
  % http://lilypond.org/doc/v2.19/Documentation/internals/ambitus
% TODO tidy up lyrics, double check agaist recordings


% TODO begin with fermata, ad lib



\paper {
  top-margin = 15
  bottom-margin = 20
  %{markup-system-spacing.basic-distance = 15%}
  system-system-spacing.basic-distance = 20
  last-bottom-spacing.basic-distance = 15
  score-markup-spacing.basic-distance = 20
  #(include-special-characters)
}

\markup "&nbsp;"

\score {
  <<
  \time 6/8
  \set Timing.defaultBarType = "!"
  \hide Score.BarNumber
  \new Staff \with {
    %{\consists "Ambitus_engraver"%}
    instrumentName = "Chant"
    %{shortInstrumentName = "Ch."%}
  }
  {
    \tempo "Slow, with awe" 4. = 40 - 46
    \key g \minor
    
    %{\override AmbitusLine.gap = #0.8%}
    \override Staff.TimeSignature.color = #white
    \override Staff.TimeSignature.layer = #-1
    \clef "treble" {
      \relative c' {
        \new Voice = "chant" {
          \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.curved" }
          \repeat volta 7 {
            r2.
            r2.
            r2 r8 c8 \break \bar ".|:" g'4. g4 (a8) bes16 (a16 g8) a8 g4 % Beata Viscera
            
            f8 g4. (f8 ees8 d8) f4 g8 a16 (g16 g8 f8) g4. r4 % Mariæ virginis,
            c,8 \break g'4. g4 (a8) bes16 (a16 g8) a8 g4 % cuius ad ubera,
            f8 g4. (f8 ees8 d8) f4 g8 a16 (g16 g8 f8) g4. r4 % rex magni nominis;
            a8 bes4 c8 bes16 (a16 g8) f8 ees16 (d16 ees8) f8 ees16 (d16 c8) bes8 \breathe % veste sub altera vim celans
            c4 d8 ees4 f8 g4. g8 (a8 bes8) \break % numinis, dictavit
            a16 (g16 f8) ees8 f4. (ees8 d8 c8) bes4. c8 (d8) % federa Dei
            ees8 f4. (ees8 d8 c8) d16 (c16 c8 bes8) c4. r4. % et hominis.
            \bar "||"
            \break
            c'4. (bes8 a8 g8 f4 g8 a4 bes8 g4 g16 a16 bes4. c4 c8 bes16 a16 g8 f8 ees8 d8 c8 bes4.) % O
            c8 (d8 ees8) f4 (ees8) \break ees16 (d16 c8) bes8 c4 \breathe % mira novitas
            g8 c4. c8 (c8 d8) ees4. f8 (ees8 d8) ees4. r4 % et novum gaudium,
            f8 g4 a8 bes16 (a16 g8) a8 g4. \breathe % matris integrita
            g4 (a8 c4. bes8 a8 g8 f4 g8 a4 bes8 g4 a16 bes16 c4 c8 bes16 a16 g8 f8 ees8 d8 c8 bes4.) % post
            c4 d8 ees8 (f8 ees8) d4 (c8)
          }
          \alternative {
            { c4. r4 c8 }
            { c4. r4. r2. }
          }

          \bar ""
        }
      }
    }
  }
  \new Lyrics \lyricsto "chant" {
    %{\set stanza = #"1. "%}
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
    instrumentName = "Drone"
  }
  {
    \key g \minor
    \override Staff.TimeSignature.color = #white
    \override Staff.TimeSignature.layer = #-1
    \relative c' {
      \override TextSpanner.outside-staff-padding = #1
      \override TextSpanner.bound-details.left.text = \markup { "c.15–20\"" }
      c2.\startTextSpan (c2.) (c2.)\stopTextSpan (c2.) (c2.) (c2.) (c2.)
      (c2.) (c2.) (c2.) (c2.) (c2.) (c2.)
      (c2.) (c2.) (c2.) (c2.) (c2.) (c2.)
      (c2.) (c2.) (c2.) (c2.) (c2.) (c2.)
      (c2.) (c2.) (c2.) (c2.) (c2.) (c2.)
      (c2.) (c2.) (c2.) (c2.) (c2.) (c2.)
      (c2.) (c2.) (c2.) (c2.) (c2.) (c2.)^\markup{ \italic "ad infinitum"  }
      \bar ""
    }
  }

  >>
  \midi { }
  \layout {
    \context {
      \Score
      \override LyricSpace #'minimum-distance = #7
      \override DynamicText.direction = #UP
      \override DynamicLineSpanner.direction = #UP
    }
  }
}

\markup {
  \abs-fontsize #10
  \fill-line {
    \column {
      \line { \bold "2."
        \column {
          \line { Po-pu-lus_ gen-ti-um se-dens_ in te-ne-bris }
          \line { sur-git ad_ gau-di-um par-tus_ tam ce-le-bris: }
          \line { Iu-de-a_ te-di-um fo-vet_ in }
          \line { la-te-bris, cor ge-rens_ con-sci-um_ de-li-cet fu-ne-bris, }
        }
      }
      \combine \null \vspace #0.2
      \line { \bold "3."
        \column {
          \line { Fer-men-ti_ pes-si-mi qui fe-cam hau-se-rant, }
          \line { ad pa-nis_ a-zi-mi pro-mi-sa pro-pe-rant: }
          \line { sunt De-o pro-xi-mi_ qui lo-nge }
          \line { ste-te-rant, et hi njo-vis-si-mi_ qui pri-mi fu-e-rant. }
        }
      }
      \combine \null \vspace #0.2
      \line { \bold "4."
        \column {
          \line { Par-tum quem_ de-stru-is Iu-de-a mi-se-ra! }
          \line { De quo nos_ ar-gu-es quem do-cet lit-te-ra; }
          \line { si no-va res-pu-is_ cre-de_ vel ve-te-ra, }
          \line { in hoc quem_ as-tru-is_ Chri-stum_ con-si-de-ra. }
        }
      }
    }
    \hspace #0.1 % adds horizontal spacing between columns;
    \column {
      \line { \bold "5."
        \column {
          \line { Te sem-per_ im-pli-cas er-ro-re pa-tri-o; }
          \line { dum vi-am_ in-di-cas er-rans_ in in-vi-o: }
          \line { in his que pre-di-cas,_ ster-nis_ in }
          \line { me-di-o ba-ses pro-phe-ti-cas_ sub_ e-van-ge-li-o. }
        }
      }
      \combine \null \vspace #0.2
      \line { \bold "6."
        \column {
          \line { Le-gis mos-ay-ce clau-sa_ mi-ste-ri-a }
          \line { nux vir-ge_ my-sti-ce na-tu-re ne-sci-a; }
          \line { a-qua de si-li-ce,_ co-lu-pna }
          \line { pre-vi-a, pro-lis do-mi-ni-ce_ si-gna_ sunt_ pro-pe-ra. }
        }
      }
      \combine \null \vspace #0.2
      \line { \bold "7."
        \column {
          \line { So-lem, quem_ li-bre-re, dum pu-rus o-ti-tur }
          \line { in au-ra_ cer-ne-re vi-sus_ non pa-ti-tur, }
          \line { cer-nat a la-te-re_ dum re-per- }
          \line { cu-ti-tur, al-vus pu-er-pe-re,_ qua to-tus_ clau-di-tur. }
        }
     }
   }
  }
}

\version "2.18.2"