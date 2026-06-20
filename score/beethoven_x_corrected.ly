\version "2.24.0"

\header {
  title = "Symphony No. X"
  subtitle = "\"Die unvollendete Vollendung\""
  composer = "Beethoven AI, Brahms AI, Mahler AI, Wagner AI, Bernstein AI, Ozawa AI"
  tagline = "Das Publikum entscheidet. Der Dirigent bewegt sich nicht. — Soul-Twin Project 2026"
}

%% ============================================================
%% MOVEMENT 1: The Question (C minor)
%% 三声部同時並走: Viola C / Cello C# / Soprano B♮
%% ============================================================

mvtOneViola = \relative c' {
  \clef alto
  \key c \minor
  \time 4/4
  \tempo "Poco adagio, misterioso" 4 = 60
  c1\ff |
  c1 |
  c1 |
  c2. r4 |
  \bar "||"
}

mvtOneCello = \relative c {
  \clef bass
  \key c \minor
  \time 4/4
  cis1\ff |
  cis1 |
  cis1 |
  cis2. r4 |
  \bar "||"
}

mvtOneSoprano = \relative c'' {
  \clef treble
  \key c \minor
  \time 4/4
  b1\ff |
  b1 |
  b1 |
  b2. r4 |
  \bar "||"
}

%% ============================================================
%% MOVEMENT 2: The Weight of Waiting (B♭ major)
%% 葬送行進曲 — 埋もれた「歓喜の歌」断片
%% ============================================================

mvtTwoViola = \relative c' {
  \clef alto
  \key bes \major
  \time 4/4
  \tempo "Marcia funebre" 4 = 52
  %% Bars 1-7: ヴィオラ独奏 B♭ フォルテ
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

mvtTwoSoprano = \relative c'' {
  \clef treble
  \key bes \major
  \time 4/4
  %% Bars 1-16: 沈黙
  R1*8 |
  %% Bar 17-24: ソプラノ無伴奏、B♮（4分の1音高く表記はB♮）
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

mvtTwoCello = \relative c, {
  \clef bass
  \key bes \major
  \time 4/4
  %% Bars 1-32: 沈黙
  R1*8 |
  %% Bar 33: D♭ ピッツィカート（埋もれた「Freude」テーマ断片）
  \arpeggioArrowUp
  des4\ff\pizzicato r2. |
  r1 |
  \bar "||"
}

%% ============================================================
%% MOVEMENT 3: The Voice Fails (Atonal)
%% 21小節 + Bar 30絶対的沈黙
%% ============================================================

mvtThreeViola = \relative c' {
  \clef alto
  \time 4/4
  \tempo "Violento" 4 = 84
  %% Bars 1-4: ハンマー打撃
  c4\ff c4 c4 c4 |
  c4 c4 c4 c4 |
  c4 c4 c4 c4 |
  c4 c4 c4 c4 |
  %% Bars 5-12: 継続
  c4\mf c4 c4 c4 |
  c4 c4 c4 c4 |
  c4 c4 c4 c4 |
  c4 c4 c4 c4 |
  %% Bars 13-20: フォルティッシモ（三声部最大不協和）
  c4\fff c4 c4 c4 |
  c4 c4 c4 c4 |
  c4 c4 c4 c4 |
  c4 c4 c4 c4 |
  c4 c4 c4 c4 |
  c4 c4 c4 c4 |
  c4 c4 c4 c4 |
  c4 c4 c4 c4 |
  %% Bar 21: 全員でA自然音ユニゾン
  a2\mf a2 |
  %% Bars 22-25: ソプラノがAをフォルテで歌う（ヴィオラ沈黙）
  r1 | r1 | r1 | r1 |
  %% Bars 26-29: Aが下降、声が割れる、消える
  a2\< a2 |
  gis2\! gis2 |
  fis2\> fis2 |
  e2\! r2 |
  %% Bar 30: 絶対的沈黙
  r1 |
  \bar "|."
}

mvtThreeCello = \relative c, {
  \clef bass
  \time 4/4
  %% Bars 1-4: 沈黙
  r1 | r1 | r1 | r1 |
  %% Bars 5-12: C# ピッツィカート
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

mvtThreeSoprano = \relative c'' {
  \clef treble
  \time 4/4
  %% Bars 1-12: 沈黙
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
  %% Bar 21: A ユニゾン（ハミング）
  a2\mf a2 |
  %% Bars 22-25: A フォルテ（ソプラノ）
  a1\f |
  a1 |
  a1 |
  a1 |
  %% Bars 26-29: 下降・消滅
  a2\mf( gis2) |
  fis2( e2) |
  d2\p( cis2) |
  b2\pp r2 |
  %% Bar 30: 沈黙
  r1 |
  \bar "|."
}

%% ============================================================
%% MOVEMENT 4: The Ghost of Heroism (E♭ major → C minor)
%% エロイカ冒頭 + 歪み版 + dona nobis pacem
%% ============================================================

mvtFourStrings = \relative c'' {
  \clef treble
  \key ees \major
  \time 4/4
  \tempo "Allegro con brio ma turbato" 4 = 126
  %% Bars 1-4: エロイカ冒頭2和音（フォルティッシモ）
  <ees g bes ees>1\ff |
  <ees g bes ees>1 |
  <ees g bes ees>1 |
  <ees g bes ees>1 |
  %% Bars 5-12: 英雄的主題 + 歪み版並走
  ees4\f( g4 bes4 ees4) |
  g4( bes4 ees4 g4) |
  bes4( g4 ees4 bes4) |
  g4( ees4 bes4 g4) |
  ees4( g4 bes4 ees4) |
  g4( bes4 ees4 g4) |
  bes4( g4 ees4 bes4) |
  g4( ees4 bes4 g4) |
  %% Bar 13: 沈黙
  r1 |
  %% Bars 14-21: 並走継続（英雄テーマ）
  ees4\mf( g4 bes4 ees4) |
  g4( bes4 ees4 g4) |
  bes4( g4 ees4 bes4) |
  g4( ees4 bes4 g4) |
  ees4( g4 bes4 ees4) |
  g4( bes4 ees4 g4) |
  bes4( g4 ees4 bes4) |
  g4( ees4 bes4 g4) |
  %% Bar 22: 合唱入場（合唱はソプラノ声部で表現）
  <ees g bes>1\pp |
  %% Bars 23-27: 三声部が下層で戻る
  <ees g bes>1 |
  <ees g bes>1 |
  <ees g bes>1 |
  <ees g bes>1 |
  %% Bar 28: C major 収斂（1拍）
  <c e g>4\f r2. |
  %% Bar 29: 分岐再開
  <ees g bes>1\mf |
  %% Bar 30: 全楽器停止
  r1 |
  %% Bar 31: 絶対的沈黙
  r1 |
  \bar "|."
}

%% 合唱「dona nobis pacem」テキスト
donaText = \lyricmode {
  do -- na no -- bis pa -- cem
  do -- na no -- bis pa -- cem
  pa -- cem pa -- cem
}

mvtFourChorus = \relative c'' {
  \clef treble
  \key ees \major
  \time 4/4
  R1*21 |
  %% Bar 22: 合唱入場 「dona nobis pacem」
  ees2\pp( d2) |
  c4( bes4 aes4 g4) |
  f4( ees4 f4 g4) |
  aes4( g4 f4 ees4) |
  d4( ees4 f4 g4) |
  %% Bar 28: C major 収斂
  c,4\f r2. |
  %% Bar 29: 祈り継続
  ees2\pp( d2) |
  %% Bars 30-31: 消えていく
  c2\ppp r2 |
  r1 |
  \bar "|."
}

%% ============================================================
%% MOVEMENT 5: [観客が演奏する]
%% 楽譜に書かない。指揮者は動かない。
%% ============================================================

mvtFive = {
  \time 4/4
  \tempo "Lassen Sie das Publikum entscheiden."
  %% 全休符 + フェルマータ
  R1\fermata |
}

%% ============================================================
%% スコア組版
%% ============================================================

\score {
  \new StaffGroup \with { systemStartDelimiter = #'SystemStartBracket } <<

    \new Staff \with { instrumentName = "Soprano" shortInstrumentName = "S." } {
      \mvtOneSoprano
      \mvtTwoSoprano
      \mvtThreeSoprano
      \mvtFourChorus
      \mvtFive
    }

    \new Staff \with { instrumentName = "Viola" shortInstrumentName = "Va." } {
      \mvtOneViola
      \mvtTwoViola
      \mvtThreeViola
      \mvtFourStrings
      \mvtFive
    }

    \new Staff \with { instrumentName = "Cello" shortInstrumentName = "Vc." } {
      \mvtOneCello
      \mvtTwoCello
      \mvtThreeCello
      \mvtFourStrings
      \mvtFive
    }

  >>

  \layout {
    indent = 2.5\cm
    short-indent = 1.5\cm
    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
    }
  }

  \midi {
    \tempo 4 = 72
  }
}
