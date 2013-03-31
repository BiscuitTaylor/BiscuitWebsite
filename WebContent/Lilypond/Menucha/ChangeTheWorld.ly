\version "2.16.1"

date = #(strftime "%Y.%m.%d" (localtime (current-time)))
hour = #(strftime "%H:%M" (localtime (current-time)))
\header {
  title = "Change the World (chorus)"
  composer = "Mandalyn May"
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
%\include "../fretboards/biscuit-fretboards.ly"

chorusChords = \chordmode 
{
	c1 | g1| f1 | g | 

}


%strum on 1     &3 &4
chorusMelody =
\new Voice = "chorusVocal"
{
  e4 d8 c8 d4 e8 c8 ~ | c4  a8 g8 f'8 e8 e4 |
  \break
  e4 c4 g'4 e8 d8 ~ | d8 c8 d8 c8 f4 e4 |
  \repeat volta 2
	{
	  r4 d8 c8 d4 e8 c8 ~ | c4  a8 g8 f'8 e8 e4 |
	  \break
	  e4 c4 g'4 e8 d8 ~ | d8 c8 d8 c8 f4 e4 |
	}
}


chorusLyrics = 
  \new Lyrics  \lyricsto chorusVocal 
  {
  I'm going to change the world | one step at a time 
  Each day of my life | I know that I am |
  
  gon -- na change the world | one step at a time 
  Each day of my life | I know that I am |
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score
{
<<
	\new ChordNames 
	{
		%\with { midiInstrument = #"acoustic guitar (nylon)" }
		{
		    \chorusChords
		}	
	}

	\new Voice = "vocal"
	{
		\relative c''
		{
			\numericTimeSignature
			\time 4/4
			{
				%\new Staff = "melodyStaff"
				{
					{
						\key c \major	
						{
							\chorusMelody
						}
					}
				}
			}
		}
	}
  
	%Lyrics
	{
		\chorusLyrics
	}

	% Enable this to write the notes of each chord on a new staff below the melody staff
	%\new Staff \chorusChords
>>

  \layout { indent = 0.0\cm }
  \midi {}
} 

% ****************************************************************