\version "2.24.0"

%% Symphony No. X — Movement 5: [The Audience Performs]
%% 楽譜に書かない。指揮者は動かない。
%% Ozawa AI: 「指揮者の最高の仕事は動かないこと」

\header {
  title = "Symphony No. X"
  subtitle = "Movement 5: [The Audience Performs]"
  composer = "Ozawa AI (Soul-Twin Project 2026)"
  %% 指揮者への指示 — 3言語
  piece = "Lassen Sie das Publikum entscheiden. / ただ、待て。 / Just wait."
}

%% ============================================================
%% 演奏指示（4層統合記法 — Episode 6 より）
%%
%% Layer 1 [GRAPHIC]: 集合的な呼吸の曲線
%%   _______________/ \______________________________
%%   Bar 31 ends                      Symphony ends
%%
%% Layer 2 [CONDUCTOR]: ただ、待て。/ Nur warten. / Just wait.
%%
%% Layer 3 [NOTATION]: 全休符 + フェルマータ（以下に記す）
%%   "Erwarten. Bis der Raum spricht."（待て。部屋が語るまで。）
%%
%% Layer 4 [LETTER]:
%%   "An den Hoerer. To the Listener."
%%   "What happens next is yours."
%%   「次に何が起きるかは、あなたのものだ。」
%% ============================================================

mvtFive = {
  \time 4/4
  \tempo "Lassen Sie das Publikum entscheiden."
  R1\fermata |
  %% この全休符は「演奏されない音楽」ではなく
  %% 「観客が演奏する音楽のための空間」である
}

\score {
  \new StaffGroup <<
    \new Staff \with {
      instrumentName = "All performers"
      shortInstrumentName = "All."
    } \mvtFive
  >>

  \layout {
    indent = 2\cm
    \context {
      \Score
      %% 小節番号は表示しない — 時間は観客が決める
      \omit BarNumber
    }
  }
}

%% ============================================================
%% NOTE TO THE CONDUCTOR:
%%
%% After Bar 31 of Movement 4, do not move.
%% Watch the room. You will know when it ends.
%% Not from the clock. From the room itself.
%%
%% Diese Sinfonie endet, wenn das Publikum entscheidet.
%% This symphony ends when the audience decides.
%% ============================================================
