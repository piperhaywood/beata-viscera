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
  top-margin = 20
  bottom-margin = 20
  %{markup-system-spacing.basic-distance = 15%}
  system-system-spacing.basic-distance = 20
  last-bottom-spacing.basic-distance = 15
}

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
    \tempo "Slow and free" 4. = 40 - 46
    \key g \minor
    
    %{\override AmbitusLine.gap = #0.8%}
    \override Staff.TimeSignature.color = #white
    \override Staff.TimeSignature.layer = #-1
    \clef "treble" {
      \relative c' {
        \new Voice = "chant" {
          \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.curved" }
          \override TextSpanner.outside-staff-padding = #1
          \override TextSpanner.bound-details.left.text = \markup { "c.15–20\"" }
          
          \repeat volta 7 { 
            r2.\startTextSpan
            r2.
            r2\stopTextSpan r8 c8 \break \bar ".|:" g'4. g4 (a8) bes16 (a16 g8) a8 g4 % Beata Viscera
            
            f8 g4. (f8 ees8 d8) f4 g8 a16 (g16 g8 f8) g4. r4 % Mariæ virginis,
            c,8 \break g'4. g4 (a8) bes16 (a16 g8) a8 g4 % cuius ad ubera,
            f8 g4. (f8 ees8 d8) f4 g8 a16 (g16 g8 f8) g4. r4 % rex magni nominis;
            a8 bes4 c8 bes16 (a16 g8) f8 ees16 (d16 ees8) f8 ees16 (d16 c8) bes8 % veste sub altera vim celans
            c4 d8 ees4 f8 g4. g8 (a8 bes8) \break % numinis, dictavit
            a16 (g16 f8) ees8 f4. (ees8 d8 c8) bes4. c8 (d8) % federa Dei
            ees8 f4. (ees8 d8 c8) d16 (c16 c8 bes8) c4. r4. % et hominis.
            \bar "||"
            \break
            c'4. (bes8 a8 g8 f4 g8 a4 bes8 g4 g16 a16 bes4. c4 c8 bes16 a16 g8 f8 ees8 d8 c8 bes4.) % O
            c8 (d8 ees8) f4 (ees8)  \break ees16 (d16 c8) bes8 c4 \breathe % mira novitas
            g8 c4. c8 (c8 d8) ees4. f8 (ees8 d8) ees4. r4 % et novum gaudium,
            f8 g4 a8 bes16 (a16 g8) a8 g4. % matris integrita
            g4 (a8 c4. bes8 a8 g8 f4 g8 a4 bes8 g4 a16 bes16 c4 c8 bes16 a16 g8 f8 ees8 d8 c8 bes4.) % post
            c4 d8 ees8 (f8 ees8) d4 (c8) |
          }
          \alternative {
            { c4. r4 c8 | }
            { c4. r4. | }
          }
          r2.

          \bar "|."
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
      \crescTextCresc
      c2.\< (c2.) (c2.) (c2.) (c2.) (c2.) (c2.)
      (c2.) (c2.) (c2.) (c2.) (c2.) (c2.)
      (c2.) (c2.) (c2.) (c2.) (c2.) (c2.)
      (c2.) (c2.) (c2.) (c2.) (c2.) (c2.)
      (c2.) (c2.) (c2.) (c2.) (c2.) (c2.)
      (c2.) (c2.) (c2.) (c2.) (c2.) (c2.)
      (c2.) (c2.) (c2.) (c2.) (c2.) (c2.)
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

%{\markup {
  \fill-line {
    \column {
      \left-align {
        \line { Po- | pu-lus_ | gen-ti-um se- | dens_ | in te-ne- | bris }
        \line { sur- | git ad_ | gau-di-um par- | tus_ | tam ce-le-bris:}
        \line { I- | u-de-a_ te- | di-um fo-vet | }
        \line { in la-te-bris, | cor ge- | rens con-sci- | um | }
        \line { de- | li-cet fu- | ne- | bris, }

      }
    }
  }
}%}

\version "2.18.2"