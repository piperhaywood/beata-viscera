\header {
  title = "Beata viscera"
  tagline = ""
}

% TODO add rest indication after "novitas"
% TODO add tremolos ?
% TODO make ambitus look a little better?
  % http://lilypond.org/doc/v2.19/Documentation/internals/ambitus
% TODO tidy up lyrics, double check agaist recordings
\paper {
  top-margin = 10
}

\score {
  <<
  \new Staff %{\with { \consists "Ambitus_engraver" }%} {
    \key g \minor
    %{\override AmbitusLine.gap = #0.8%}
    \set Timing.defaultBarType = "!"
    \hide Score.BarNumber
    \override Staff.TimeSignature.color = #white
    \override Staff.TimeSignature.layer = #-1
    \time 6/8
    \clef "treble_8" {
      \relative c' {
        \new Voice = "verse" {
          \partial 8
          c,8 g'4. g4 (a8) bes16 (a16 g8) a8 g4 % Beata Viscera
          f8 g4. (f8 ees8 d8) f4 g8 a16 (g16 g8 f8) g4. r4 % Mariæ virginis,
          c,8 \break g'4. g4 (a8) bes16 (a16 g8) a8 g4 % cuius ad ubera,
          f8 g4. (f8 ees8 d8) f4 g8 a16 (g16 g8 f8) g4. r4 % rex magni nominis;
          a8 bes4 c8 bes16 (a16 g8) f8 ees16 (d16 ees8) f8 ees16 (d16 c8) bes8 % veste sub altera vim celans
          c4 d8 ees4 f8 g4. g8 (a8 bes8) % numinis, dictavit
          a16 (g16 f8) ees8 f4. (ees8 d8 c8) bes4. c8 (d8) % federa Dei
          ees8 f4. (ees8 d8 c8) d16 (c16 c8 bes8) c4. r4. % et hominis.
          \bar "||"
        }
        \new Voice = "refrain" {
          \break
          c'4. (bes8 a8 g8 f4 g8 a4 bes8 g4 g16 a16 bes4. c4 c8 bes16 a16 g8 f8 ees8 d8 c8 bes4.) % O
          c8 (d8 ees8) f4 (ees8) ees16 (d16 c8) bes8 c4 % mira novitas
          g8 c4. c8 (c8 d8) ees4. f8 (ees8 d8) ees4. r4 % et novum gaudium,
          f8 g4 a8 bes16 (a16 g8) a8 g4. % matris integrita
          g4 (a8 c4. bes8 a8 g8 f4 g8 a4 bes8 g4 a16 bes16 c4 c8 bes16 a16 g8 f8 ees8 d8 c8 bes4.) % post
          c4 d8 ees8 (f8 ees8) d4 (c8) c4. r4 % puerperium.
          \bar ":|."
        }
      }
    }
  }
  \new Lyrics \lyricsto "refrain" {
    O __ mi -- ra __ no -- vi -- tas
    et no -- vum gau -- di -- um,
    ma -- tris in -- te -- gri -- ta,
    post __ pu -- er -- per -- i -- um.
  }
  \new Lyrics \lyricsto "verse" {
    \set stanza = #"1. "
    Be -- a -- ta __ vi -- sce -- ra
    Ma -- ri -- æ vir -- gi -- nis,
    cu -- ius ad __ u -- be -- ra,
    rex ma -- gni no -- mi -- nis;
    ve -- ste sub al -- te -- ra __ vim ce -- lans
    nu -- mi -- nis, dic -- ta -- vit __
    fe -- de -- ra __ De -- i __ et ho -- mi -- nis.
  }
  \new Lyrics \lyricsto "verse" {
    \set stanza = #"2. "
    Po -- pu -- lus __ gen -- ti -- um
    se -- dens __ in te -- ne -- bris
    sur -- git ad __ gau -- di -- um
    par -- tus __ tam cel -- e -- bris:
    I -- u -- de -- a __ te -- di -- um
    fo -- vet in la -- te -- bris,
    cor ge -- rens con -- sci -- um
    de -- li -- cet __ fu -- ne -- bris,
  }
  \new Lyrics \lyricsto "verse" {
    \set stanza = #"3. "
    Fer -- men -- ti __ pes -- si -- mi
    qui fe -- cam hau -- se -- rant,
    ad pa -- nis __ a -- zi -- mi
    pro -- mi -- sa pro -- pe -- rant:
    sunt De -- o pro -- xi -- mi __
    qui lon -- ge ste -- te -- rant,
    et hi njo -- vis -- si -- mi __
    qui pri -- mi fu -- er -- ant.
  }
  \new Lyrics \lyricsto "verse" {
    \set stanza = #"4. "
    Par -- tum quem __  de -- stru -- is,
    I -- u -- de -- a mi -- se -- ra!
    De quo __ nos __ ar -- gu -- es,
    quem __ do -- cet lit -- te -- ra;
    si no -- va __ res -- pu -- is,
    cre -- de vel ve -- ter -- a,
    in hoc __ quem __ as -- tru -- is
    Chri -- stum con -- si -- der -- a.
  }
  \new Lyrics \lyricsto "verse" {
    \set stanza = #"5. "
    Te sem -- per __ im -- pli -- cas
    err -- o -- re pa -- tri -- o;
    dum vi -- am __ in -- di -- cas
    err -- ans __ in in -- vi -- o:
    in his que pre -- di -- cas, __
    ster -- nis __ in me -- di -- o
    ba -- ses pro -- phe -- ti -- cas __
    sub e -- van -- ge -- li -- o.
  }
  \new Lyrics \lyricsto "verse" {
    \set stanza = #"6. "
    Le -- gis mos -- ay -- ce
    clau -- sa mi -- ster -- i -- a; % TODO this should be extended
    nux vir -- ge my -- sti -- ce
    na -- tu -- re ne -- sci -- a;
    a -- qua de si -- li -- ce,
    co -- lum -- pna pre -- vi -- a,
    pro -- lis do -- mi -- ni -- ce
    si -- gna sunt pro -- per -- a.
  }
  \new Lyrics \lyricsto "verse" {
    \set stanza = #"7. "
    So -- lem, quem __ li -- bre -- re,
    Dum pu -- rus o -- ti -- tur
    In au -- ra __ cer -- ner -- e
    vi -- sus __ non pa -- ti -- tur,
    cer -- nat a la -- te -- re __
    dum re -- per -- cu -- ti -- tur,
    al -- vus pu -- er -- per -- e, __
    qua to -- tus clau -- di -- tur.
  }
  >>
  \layout {
    \context {
      \Score
      %{\override LyricSpace #'minimum-distance = #1.8%}
      %{\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)%}
    }
  }
}

\version "2.18.2"