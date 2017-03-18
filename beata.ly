\header{
  title = "Beata viscera"
}

\score {
  <<
    \new MensuralVoice = "discantus" \relative c'' {
      \hide Score.BarNumber {
        e, b' b d c
		b c b a b a g f a b c b b a b
      }
    }
	\new Lyrics \lyricsto "discantus" {
      Be - a - ta_ vi -- sce - ra
    }
  >>
}

\version "2.18.2"