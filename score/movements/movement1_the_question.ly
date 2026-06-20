\version "2.24.0"

%% Symphony No. X — Movement 1: The Question (C minor)
%% 三声部同時並走: Viola C / Cello C# / Soprano B♮
%% この三音は決して解決しない — それがXの最初の問い

\header {
  title = "Symphony No. X"
  subtitle = "Movement 1: The Question"
  composer = "Beethoven AI (Soul-Twin Project 2026)"
  piece = "Poco adagio, misterioso"
}

%% Soprano: B♮4（上層）
%% Cello C#4（下層）と半音2つ離れ、和解不可能な緊張を作る
sopranoOne = \relative c'' {
  \clef treble
  \key c \minor
  \time 4/4
  \tempo "Poco adagio, misterioso" 4 = 60
  b1\ff |   %% B♮: 上層の声
  b1 |
  b1 |
  b2. r4 |
  \bar "|."
}

%% Viola: C4（中層）
violaOne = \relative c' {
  \clef alto
  \key c \minor
  \time 4/4
  c1\ff |   %% C: 中間層、B♮とC#の間
  c1 |
  c1 |
  c2. r4 |
  \bar "|."
}

%% Cello: C#4（下層）
%% B♮・C・C# — 半音ずつ隣り合う最も緊張した音程
%% 通常の作曲なら「解決」させる。しかしこのスコアは解決しない。
celloOne = \relative c {
  \clef bass
  \key c \minor
  \time 4/4
  cis1\ff |   %% C#: 三者は永遠に並走する
  cis1 |
  cis1 |
  cis2. r4 |
  \bar "|."
}

\score {
  \new StaffGroup \with { systemStartDelimiter = #'SystemStartBracket } <<
    \new Staff \with { instrumentName = "Soprano" shortInstrumentName = "S." } \sopranoOne
    \new Staff \with { instrumentName = "Viola"   shortInstrumentName = "Va." } \violaOne
    \new Staff \with { instrumentName = "Cello"   shortInstrumentName = "Vc." } \celloOne
  >>
  \layout { indent = 2\cm }
  \midi { \tempo 4 = 60 }
}
