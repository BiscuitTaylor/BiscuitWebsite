\version "2.14.0"

date = #(strftime "%Y.%m.%d" (localtime (current-time)))
hour = #(strftime "%H:%M" (localtime (current-time)))
\header {
  title = "Don't Let the Sun Catch You Crying"
  composer = "Gerry Marsden"
  tagline = \markup 
  {
  	"Transcribed by Biscuit on: " \date "at " \hour 
  	"; engraved by LilyPond" #(ly:export (lilypond-version))
  }
}

% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************

\paper {
  indent = 0\mm
  line-width = 160\mm
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}


% ****************************************************************
% ly snippet:
% ****************************************************************
\include "../fretboards/biscuit-fretboards.ly"
\include "predefined-guitar-fretboards.ly"

introChords = \chordmode { c1:maj7 | f1:maj7 | c1:maj7 | f1:maj7 }

verseChords = \chordmode 
{	
	%\set Staff.midiInstrument = #"acoustic guitar (nylon)"
	c1:maj7 | f1:maj7 | c1:maj7 | f1:maj7 %|  \break
                        c1:maj7 | f1:maj7 | g | g %| \break
                        a1:min | e1:min | a1:min | e1:min %| \break
                        f1 | g1 |c1:maj7 | f1:maj7 %| 
}

chorusChords = \chordmode 
{
	g1 | g1| a1:min | a1:min | 
	f1 | f1 | g1 | g1 %| 
}

introMelody =
\new Voice = "introGuitarRythm"
\with { \consists "Pitch_squash_engraver" }
{
	\relative c''
	{
		\improvisationOn
		b4. b4.  b4 e4. e4. e4
		b4. b4.  b4 e4. e4. e4
	}
}

verseMelody =
\new Voice = "verseVocal"
{
  b2 r8 g8 ~ g8 e8 | a2 ~ a8 g8 ~ g8 a8 | b2 g2 | r1 | \break
  r4 r8 b8 ~ b8 g8 ~ g8 e8 | a2 \times 2/3 { g4 g4 a4 } | b1| r1 | \break
  r4 c8 c8 ~ c4 b8 a8 | c4 b16 a16 g8 ~ g4 r4 | \break
  r4 c8 c8 d8 c8 ~ c8 c16 b16 | c4 b8 g8 ~ g8 (e8 g16 a16 ~ a8) | \break
  r4 r8 a8 ~ a4 g8 f8 | e2 r8 c8 ~ c8 d8 | g4 a4 r2 | r1 |
}

chorusMelody =
\new Voice = "chorusVocal"
{
  % Note the use of "\times 2/3" below to create a triplet
  r2 \times 2/3 { g4 g a } | b8 b4. r4 r8 c16 d16 | c4. a8 ~ a2 | r1 | \break
  r2 \times 2/3 { a4 b c } | a4 a4 r2 | r4 a16 a16 e'8 ~ e8 d8 ~ d4 | r1 |
}


verseLyrics = 
<<
  \new Lyrics  \lyricsto verseVocal 
  %\context Lyrics \lyricmode  \with { alignBelowContext = "melodyStaff" }
  %\lyricsto verseMelody 
  {
  Don't let the | sun catch you | cry -- in' 
  The night's the | time for all your | tears
  Your heart may be | bro -- ken to -- night
  But to -- mor -- row in the | mor -- ning light
  Don't let the | sun catch you | cry -- in'
  }

  \new Lyrics \lyricsto verseVocal 
  { \set stanza = "2. "
  The night time | shadows dis -- ap- | pear \skip 2
  And with them | go all of your | tears
  "But the" mor -- ning \skip 8 | will bring \skip 8 joy
  for \skip 8 ev -- \skip 8 ery \skip 16 | girl and boy
  "so don't" let the | sun catch you | cry -- in'
  }

  \new Lyrics \lyricsto verseVocal
  { \set stanza = "3. "	
  If you should | come  to dis- | co -- ver
  That you've been | left \skip 8 for a- | "nother"
  Just re -- mem -- ber | love's \skip 8 a game
  that can al -- ways \skip 4 \skip 8 | come a -- gain
  "so don't" let the | sun catch you | cry -- in'
  % D.S. this time!
  }
>>

chorusLyrics = 
{
	\new Lyrics \lyricsto chorusVocal
	{
		"We know" that | cry -- in's not a | bad thing %|  \break
		But stop your | cry -- in' |  when the birds sing
	}
}

%outroLyrics = 
%{
	\new Lyrics \lyricsto outroVocal
	{
		Don't let the sun catch you | cry -- in %|  \break
	}
%}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score
{
<<
    %\new TabStaff
	%{
		\set TabStaff.stringTunings =   #biscuitTuning
	 	\introChords 
		\verseMelody
		\chorusMelody
	%}
	
    \keepWithTag #'BiscuitUkeFretboard \new FretBoards 
    %\removeWithTag #'BiscuitUkeFretboard \new FretBoards 
	{
		\tag #'BiscuitUkeFretboard
		{
    	\set stringTunings = #biscuitTuning
    	\override FretBoard
        	#'(fret-diagram-details string-count) = #'4
    	\override FretBoard
        	#'(fret-diagram-details finger-code) = #'in-dot
		}
	  	
		{
			\introChords
		    %\verseChords
		    %\chorusChords
			%\repeat unfold 2 
			%{
			%	\introChords
			%}
		}
	}
	\new ChordNames 
	{
		%\with { midiInstrument = #"acoustic guitar (nylon)" }
		{
	    	\introChords
		    \verseChords
		    \chorusChords
			\repeat unfold 2 %'borrow' the intro chords for the outro
			{
				\introChords
			}
			\chordmode { c }
		}	
	}

	\new Voice = "vocal"
	{
		\tempo "Andante - 1.53 Hz " 4 = 92
		%\tempo "Andante " 4 = 92
		%\markup { (1.53 Hz) }
		\relative c''
		{
			\numericTimeSignature
			\time 4/4
	  		\introMelody
			\repeat volta 2 
			{
				%\new Staff = "melodyStaff"
				{
					{
						\key c \major	
					    \set Staff.midiInstrument = #"ocarina"
						%\numericTimeSignature
						%\time 4/4
						{
						    \verseMelody
						    	% Third time, D.S.!
						  	\bar "||"
							\chorusMelody
						}
					}
				}
			}
			\break
			\repeat unfold 2 
			{
				\introMelody
			}
			\new Voice = "outroGuitarRythm"
			\with { \consists "Pitch_squash_engraver" }
			{
				\relative c''
				{
					\improvisationOn
					c1
				}
			}

		}
	}
  
	%Lyrics
	{
		%\introLyrics
		\verseLyrics
		\chorusLyrics
	}

	% Enable this to write the notes of each chord on a new staff below the melody staff
	%\new Staff \chorusChords
>>

  \layout { indent = 0.0\cm }
  \midi {}
} 

% ****************************************************************
% end ly snippet
% ****************************************************************