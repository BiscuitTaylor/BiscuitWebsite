\version "2.14.0"

date = #(strftime "%Y.%m.%d" (localtime (current-time)))
hour = #(strftime "%H:%M" (localtime (current-time)))
\header {
  title = "On a Good Day"
  composer = "Joanna Newsom"
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

introChords = \chordmode { g:min | f | ees }

verseChords = \chordmode 
{	
	%\set Staff.midiInstrument = #"acoustic guitar (nylon)"
	bes2 | ees2 | f2 | bes2 
	d2:min | g2:min | d2:min | g2:min %|  \break
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


verseLyrics = 
<<
  \new Lyrics  \lyricsto verseVocal 
  %\context Lyrics \lyricmode  \with { alignBelowContext = "melodyStaff" }
  %\lyricsto verseMelody 
  {
  Hey, hey, hey - the | end is near
  on a | good day | you can see the | end from  | here; and I |
  won't turn | back now, though the | way is | clear; I will |
  stay for | the re- | main- | der
  }

  \new Lyrics \lyricsto verseVocal 
  { \set stanza = "2. "
  I saw a | life and I | called it | mine - I |
  saw it | drawn so | sweet and fine | that I |
  had be - | gun to fill in | all the lines | right |
  down to | what we'd | name | her
  }

  \new Lyrics \lyricsto verseVocal
  { \set stanza = "3. "	
  Our nature does not | change by will; in the |
  winter 'round the | ruined mill - the |
  creek is lying | flat and still; it is |
  water but it's | frozen
  }
  
  \new Lyrics \lyricsto verseVocal
  { \set stanza = "4. "	
  So 'cross the years, and | miles and through - On a | 
  good day, you can feel my | love for you; Will you |
  leave me be so that we | can stay true... to the |
  path that you have | chosen
  }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score
{
<<
    %\new TabStaff
	%{
		\set TabStaff.stringTunings =   #biscuitTuning
	 	\introChords 
		\verseMelody
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
			%\introChords
		    \verseChords
		}
	}
	\new ChordNames 
	{
		%\with { midiInstrument = #"acoustic guitar (nylon)" }
		{
	    	%\introChords
		    \verseChords
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
	  		%\introMelody
			\repeat volta 4 
			{
				%\new Staff = "melodyStaff"
				{
					\key c \major	
				    \set Staff.midiInstrument = #"ocarina"
					%\numericTimeSignature
					%\time 4/4
					{
					    \verseMelody
					}
				}
			}

		}
	}
  
	%Lyrics
	{
		%\introLyrics
		\verseLyrics
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