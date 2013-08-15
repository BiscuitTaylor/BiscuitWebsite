\version "2.16.1"

date = #(strftime "%Y.%m.%d" (localtime (current-time)))
hour = #(strftime "%H:%M" (localtime (current-time)))
\header {
  title = "Acacia Waltz"
  composer = "Biscuit Taylor"
  tagline = \markup 
  {
  	"Transcribed by Biscuit on: " \date "at " \hour 
  	"; engraved by LilyPond" $(lilypond-version)
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

verseChords = \chordmode 
{	
	%\set Staff.midiInstrument = #"acoustic guitar (nylon)"
              d1 |d1 | a1:7 |a1:7 | d1 | a1:7 %| \break
              d1 |d1 | e1:min |e1:min | g2 c4 | d1  %| 
}

chorusChords = \chordmode 
{
	d1 | e1:min1 | a1:min | a1:min | 
	f1 | f1 | g1 | g1 %| 
}

verseMelody =
\new Voice = "verseVocal"
{
  a4 <d fis>4 <d fis>4 | a4 <d fis>4 <d fis>4 | g,4 <cis e>4 <cis e>4 | g1 %| \break
  <d fis a>2 fis4 |<d fis a>2 fis4 | g4 e4 d4 | cis1 | \break
}

chorusMelody =
\new Voice = "chorusVocal"
{
  < d fis a>2 fis4 |<d fis a>2 fis4 | <b e g>2  e4 | <b e g>2  e4 | %\break
  < d fis a>2 fis4 |<d fis a>2 fis4 | g4 e4 d4 | cis1 | \break
}


% Reference Folder 4, track 67 on black Sony recorder 
verseLyrics = 
<<
  \new Lyrics  \lyricsto verseVocal 
  %\context Lyrics \lyricmode  \with { alignBelowContext = "melodyStaff" }
  %\lyricsto verseMelody 
  {
  And the | way that she | moves on the | dance floor \skip 2
  as | her hair | gathers the | light
  }

  \new Lyrics \lyricsto verseVocal 
  { \set stanza = "2. "
  And the | way that she | moved on the | dance floor \skip 2
  the way she | moved through the | light
  }

>>

chorusLyrics = 
{
	\new Lyrics \lyricsto chorusVocal
	{
		When I  | left my | loveli- | ness %|  \break
		When I  | ceased to |  care
	}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score
{
<<
	
    \keepWithTag #'BiscuitUkeFretboard \new FretBoards 
    %\removeWithTag #'BiscuitUkeFretboard \new FretBoards 
	{
		\tag #'BiscuitUkeFretboard
		{
    	\set Staff.stringTunings = #biscuitTuning
    	\override FretBoard
        	#'(fret-diagram-details string-count) = #'4
    	\override FretBoard
        	#'(fret-diagram-details finger-code) = #'in-dot
		}
	  	
	}
	\new ChordNames 
	{
		%\with { midiInstrument = #"acoustic guitar (nylon)" }
		{
		    \verseChords
		    \chorusChords
		}	
	}

	\new Voice = "vocal"
	{
		\tempo "Andante - 1.53 Hz " 4 = 92
		%\tempo "Andante " 4 = 92
		%\markup { (1.53 Hz) }
		\relative c'
		{
			\numericTimeSignature
			\time 3/4
			\repeat volta 2 
			{
				%\new Staff = "melodyStaff"
				{
					{
						\key d \major	
					    \set Staff.midiInstrument = #"ocarina"
						%\numericTimeSignature
						%\time 3/4
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