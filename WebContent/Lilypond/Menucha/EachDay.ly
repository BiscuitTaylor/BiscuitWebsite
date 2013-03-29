\version "2.16.1"

date = #(strftime "%Y.%m.%d" (localtime (current-time)))
hour = #(strftime "%H:%M" (localtime (current-time)))
\header {
  title = "Each Day"
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
% ly snippet:
% ****************************************************************
\include "../fretboards/biscuit-fretboards.ly"

chorusChords = \chordmode 
{
	c1 | g1| f1 | g | 

}


%strum on 1     &3 &4
chorusMelody =
\new Voice = "chorusVocal"
{
  e4 c4 g'4 e8 d8 ~ | d8 c8 d8 c8 f4 e4 |
  \break
  r4 d8 c8 d4 e8 c8 ~ | c8  a8 c8 a8 f'4 e4 |
}


chorusLyrics = 
  \new Lyrics  \lyricsto chorusVocal 
  {
  Each day of my life | I know that I am |
  gon -- na change the world | I know that I am 
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
		\tempo "Allegro  " 4 = 120
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
% end ly snippet
% ****************************************************************