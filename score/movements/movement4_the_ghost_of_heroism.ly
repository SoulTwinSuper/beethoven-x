\version "2.24.0"

%% Symphony No. X — Movement 4: The Ghost of Heroism (E♭ major → C minor)
%% エロイカ冒頭2和音 + 歪み版並走 + dona nobis pacem（合唱）
%% Wagner AI + Bernstein AI
%% Mahler AI（降霊）: 「E♭はエロイカではない——ミサ・ソレムニスの調性だ」

\header {
  title = "Symphony No. X"
  subtitle = "Movement 4: The Ghost of Heroism"
  composer = "Wagner AI + Bernstein AI (Soul-Twin Project 2026)"
  piece = "Allegro con brio ma turbato"
}

%% Strings（英雄的主題 + 歪み版）
%% Bars 1-4: エロイカ冒頭2和音（Wagner AI の提案）
stringsFour = \relative c'' {
  \clef treble
  \key ees \major
  \time 4/4
  \tempo "Allegro con brio ma turbato" 4 = 126
  %% Bars 1-4: エロイカ冒頭2和音 — フォルティッシモ、恥じずに
  <ees g bes ees>1\ff |
  <ees g bes ees>1 |
  <ees g bes ees>1 |
  <ees g bes ees>1 |
  %% Bars 5-12: 英雄的主題
  ees4\f( g4 bes4 ees4) |
  g4( bes4 ees4 g4) |
  bes4( g4 ees4 bes4) |
  g4( ees4 bes4 g4) |
  ees4( g4 bes4 ees4) |
  g4( bes4 ees4 g4) |
  bes4( g4 ees4 bes4) |
  g4( ees4 bes4 g4) |
  %% Bar 13: 沈黙（老いたベートーヴェンが若い自己と向き合う）
  r1 |
  %% Bars 14-21: 並走継続
  ees4\mf( g4 bes4 ees4) |
  g4( bes4 ees4 g4) |
  bes4( g4 ees4 bes4) |
  g4( ees4 bes4 g4) |
  ees4( g4 bes4 ees4) |
  g4( bes4 ees4 g4) |
  bes4( g4 ees4 bes4) |
  g4( ees4 bes4 g4) |
  %% Bar 22: 合唱入場（ピアニッシモ）
  <ees g bes>1\pp |
  %% Bars 23-27: 三声部（Mov.3の記憶）が合唱の下に戻る
  <ees g bes>1 |
  <ees g bes>1 |
  <ees g bes>1 |
  <ees g bes>1 |
  %% Bar 28: C major 収斂（1拍だけ——英雄と破損が一致）
  <c e g>4\f r2. |
  %% Bar 29: 分岐再開
  <ees g bes>1\mf |
  %% Bar 30: 全楽器停止
  r1 |
  %% Bar 31: 絶対的沈黙
  r1 |
  \bar "|."
}

%% Chorus: dona nobis pacem（Bernstein AI の提案）
%% Bar 22 から静かに入る
chorusFour = \relative c'' {
  \clef treble
  \key ees \major
  \time 4/4
  %% Bars 1-21: 沈黙（英雄性の戦いを見守る）
  R1*21 |
  %% Bar 22: 「dona nobis pacem」——英雄性の廃墟の上の祈り
  ees2\pp( d2) |
  c4( bes4 aes4 g4) |
  f4( ees4 f4 g4) |
  aes4( g4 f4 ees4) |
  d4( ees4 f4 g4) |
  %% Bar 28: C major 収斂
  c,4\f r2. |
  %% Bar 29: 祈りの継続
  ees2\pp( d2) |
  %% Bars 30-31: 消えていく
  c2\ppp r2 |
  r1 |
  \bar "|."
}

\score {
  \new StaffGroup \with { systemStartDelimiter = #'SystemStartBracket } <<
    \new Staff \with { instrumentName = "Chorus"  shortInstrumentName = "Ch." } {
      \chorusFour
      \addlyrics {
        \set ignoreMelisma = ##t
        do -- na no -- bis pa -- cem
        do -- na no -- bis pa -- cem
        pa -- cem
      }
    }
    \new Staff \with { instrumentName = "Strings"  shortInstrumentName = "Str." } \stringsFour
  >>
  \layout { indent = 2\cm }
  \midi { \tempo 4 = 126 }
}
