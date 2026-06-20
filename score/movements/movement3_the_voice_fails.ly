\version "2.24.0"

%% Symphony No. X — Movement 3: The Voice Fails (Atonal)
%% 21小節の崩壊 + Bar 30 絶対的沈黙
%% Mahler AI（降霊）: 「A音が死ぬのは時間がそれを殺すから」

\header {
  title = "Symphony No. X"
  subtitle = "Movement 3: The Voice Fails"
  composer = "Mahler AI (Soul-Twin Project 2026)"
  piece = "Violento — then silence"
}

%% Viola: ハンマー打撃（Bars 1-4）→ 三声部最大不協和（Bars 13-20）→ A ユニゾン → 沈黙
violaThree = \relative c' {
  \clef alto
  \time 4/4
  \tempo "Violento" 4 = 84
  %% Bars 1-4: ハンマー打撃 — 容赦なく
  c4\ff c4 c4 c4 |
  c4 c4 c4 c4 |
  c4 c4 c4 c4 |
  c4 c4 c4 c4 |
  %% Bars 5-12: 継続（中強度）
  c4\mf c4 c4 c4 |
  c4 c4 c4 c4 |
  c4 c4 c4 c4 |
  c4 c4 c4 c4 |
  %% Bars 13-20: フォルティッシモ — 三声部最大不協和
  c4\fff c4 c4 c4 |
  c4 c4 c4 c4 |
  c4 c4 c4 c4 |
  c4 c4 c4 c4 |
  c4 c4 c4 c4 |
  c4 c4 c4 c4 |
  c4 c4 c4 c4 |
  c4 c4 c4 c4 |
  %% Bar 21: 全員で A 自然音ユニゾン（転換点）
  a2\mf a2 |
  %% Bars 22-25: ソプラノがAをフォルテで歌う — ヴィオラは沈黙
  r1 | r1 | r1 | r1 |
  %% Bars 26-29: Aが下降・消える
  a2\< a2 |
  gis2\! gis2 |
  fis2\> fis2 |
  e2\! r2 |
  %% Bar 30: 絶対的沈黙
  r1 |
  \bar "|."
}

%% Cello: C# ピッツィカート（Bars 5-20）→ A ユニゾン → 消滅
celloThree = \relative c, {
  \clef bass
  \time 4/4
  %% Bars 1-4: 沈黙（ヴィオラのハンマーのみ）
  r1 | r1 | r1 | r1 |
  %% Bars 5-12: C# ピッツィカート — 下層からの刺す音
  cis4\ff\pizzicato r r r |
  cis4\pizzicato r r r |
  cis4\pizzicato r r r |
  cis4\pizzicato r r r |
  %% Bars 13-20: フォルティッシモ
  cis4\fff\pizzicato r r r |
  cis4\pizzicato r r r |
  cis4\pizzicato r r r |
  cis4\pizzicato r r r |
  cis4\pizzicato r r r |
  cis4\pizzicato r r r |
  cis4\pizzicato r r r |
  cis4\pizzicato r r r |
  %% Bar 21: A ユニゾン（アルコ）
  a2\mf\arco a2 |
  r1 | r1 | r1 | r1 |
  r1 | r1 | r1 | r1 |
  r1 |
  \bar "|."
}

%% Soprano: 沈黙（Bars 1-12）→ B♮ フォルティッシモ → A → 下降・消滅
sopranoThree = \relative c'' {
  \clef treble
  \time 4/4
  %% Bars 1-12: 沈黙 — 声はまだ届かない
  R1*12 |
  %% Bars 13-20: B♮ フォルティッシモ
  b4\fff b4 b4 b4 |
  b4 b4 b4 b4 |
  b4 b4 b4 b4 |
  b4 b4 b4 b4 |
  b4 b4 b4 b4 |
  b4 b4 b4 b4 |
  b4 b4 b4 b4 |
  b4 b4 b4 b4 |
  %% Bar 21: A ユニゾン（転換——全員が同じ音を出す唯一の瞬間）
  a2\mf a2 |
  %% Bars 22-25: A をフォルテで歌う
  a1\f |
  a1 |
  a1 |
  a1 |
  %% Bars 26-29: 下降・割れる・消える
  %% Mahler: 「A音が死ぬのは時間がそれを殺すから」
  a2\mf( gis2) |
  fis2( e2) |
  d2\p( cis2) |
  b2\pp r2 |
  %% Bar 30: 絶対的沈黙
  r1 |
  \bar "|."
}

\score {
  \new StaffGroup \with { systemStartDelimiter = #'SystemStartBracket } <<
    \new Staff \with { instrumentName = "Soprano" shortInstrumentName = "S." } \sopranoThree
    \new Staff \with { instrumentName = "Viola"   shortInstrumentName = "Va." } \violaThree
    \new Staff \with { instrumentName = "Cello"   shortInstrumentName = "Vc." } \celloThree
  >>
  \layout { indent = 2\cm }
  \midi { \tempo 4 = 84 }
}
