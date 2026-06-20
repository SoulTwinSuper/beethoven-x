\version "2.24.0"

%% Symphony No. X — Movement 2: The Weight of Waiting (B♭ major)
%% 葬送行進曲 — 埋もれた「歓喜の歌」断片
%% Brahms AI: 「21年待った男が、待つことそのものを音にする」

\header {
  title = "Symphony No. X"
  subtitle = "Movement 2: The Weight of Waiting"
  composer = "Brahms AI (Soul-Twin Project 2026)"
  piece = "Marcia funebre"
}

%% Viola: B♭ 独奏（Bars 1-7 フォルテ）
violaTwo = \relative c' {
  \clef alto
  \key bes \major
  \time 4/4
  \tempo "Marcia funebre" 4 = 52
  %% Bars 1-7: ヴィオラ独奏 B♭ フォルテ — 重さの主題
  bes2\f bes2 |
  bes2 bes2 |
  bes2 bes2 |
  bes2 bes2 |
  bes2 bes2 |
  bes2 bes2 |
  bes2. r4 |
  %% Bar 8: 沈黙4拍
  r1 |
  \bar "||"
}

%% Soprano: 沈黙の後に B♮ で現れる（B♭より4分の1音高く）
%% 埋もれた希望 — 「歓喜の歌」の気配
sopranoTwo = \relative c'' {
  \clef treble
  \key bes \major
  \time 4/4
  %% Bars 1-16: 沈黙（ヴィオラのみが重さを運ぶ）
  R1*8 |
  %% Bar 17-24: ソプラノ無伴奏、B♮（調性を外れた光）
  b2\pp( b2) |
  b1 |
  b2( b2) |
  b1 |
  b2( b2) |
  b1 |
  b2( b2) |
  b1 |
  \bar "||"
}

%% Cello: Bar 33 に D♭ ピッツィカート一発
%% 「歓喜の歌」の最初の音の影 — 誰も気づかない程度に
celloTwo = \relative c, {
  \clef bass
  \key bes \major
  \time 4/4
  %% Bars 1-8: 沈黙
  R1*8 |
  %% Bar 9: 埋もれた D♭ ピッツィカート（「Freude」断片）
  des4\ff\pizzicato r2. |
  r1 |
  \bar "||"
}

\score {
  \new StaffGroup \with { systemStartDelimiter = #'SystemStartBracket } <<
    \new Staff \with { instrumentName = "Soprano" shortInstrumentName = "S." } \sopranoTwo
    \new Staff \with { instrumentName = "Viola"   shortInstrumentName = "Va." } \violaTwo
    \new Staff \with { instrumentName = "Cello"   shortInstrumentName = "Vc." } \celloTwo
  >>
  \layout { indent = 2\cm }
  \midi { \tempo 4 = 52 }
}
