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
%\include "../fretboards/biscuit-fretboards.ly"
\include "predefined-guitar-fretboards.ly"

verseChords = \chordmode 
{	
	%\set Staff.midiInstrument = #"acoustic guitar (nylon)"

              d2. | d2. | a2.:7 | a2.:7 | \break
              d2. | d2. | g2. | a2. | \break
              
              d2. |d2. | a2.:7 | a2.:7 | \break
              d2. | g2. | d2.:7 | d2.:7 | \break
              
              d2. | d2. | g2. | g2. | \break
              %d2. | d2. | a2.:sus4 | a2. | \break
              d2. | d2. | g2. | a2. | \break
              
              d2. |d2. | a2.:7 | a2.:7 |
              d2. | e2.:m | d2. | d2. %| 


}

chorusChords = \chordmode 
{
	d2. | e2.:min | a2.:min | a2.:min | 
	f2. | f2. | g2. | g2. %| 
}

verseMelody =
\new Voice = "verseVocal"
{
  a4 <d fis>4 <d fis>4 | a4 <d fis>4 <d fis>4 | g,4 <cis e>4 <cis e>4 | g2 r4 | \break
  a4 <d fis>4 <d fis>4 | a4 <d fis>4 <d fis>4 | g2 e4                 | d2 cis4 | \break

  a4 <d fis>4 <d fis>4 | a4 <d fis>4 <d fis>4 | g,4 <cis e>4 <cis e>4 | g2 r4 | \break
  a4 <d fis>4 <d fis>4 |  g2 e4                 | d2. | r2. \break

  <d fis a>2 fis4      | <d fis a>2 fis4      | <b, d g>2 e4          | <b d g>2 e4  | \break
  <d fis a>2 fis4      | <d fis a>2 fis4      | g4 e4 d4              | cis2. | \break

  a4 <d fis>4 <d fis>4 | a4 <d fis>4 <d fis>4 | g,4 <cis e>4 <cis e>4 | g2 r4 | \break
  a4 <d fis>4 <d fis>4 | g2 e4                | d2.~                  | d4 r2 \break
}

verseLeftovers =
\new Voice = "verseLeftovers"
{

  <d fis a>2 fis4 | <d fis a>2 fis4 | <cis e g>2 e4  | <cis e g>2 e4 | \break
  <d fis a>2 fis4 | <d fis a>2 fis4 | <b f g>4 g4 f4 | <a, cis e a>2. | \break
  <d fis a>2 fis4 | <d fis a>2 fis4 | g4 e4 d4       | cis2. | \break
}

chorusMelody =
\new Voice = "chorusVocal"
{
  < d fis a>2 fis4 | <d fis a>2 fis4 | <b e g>2  e4 | <b e g>2  e4 | %\break
  < d fis a>2 fis4 | <d fis a>2 fis4 | g4 e4 d4 | cis2. | \break
}


% Reference Folder 4, track 67 on black Sony recorder 
verseLyrics = 
<<
  \new Lyrics  \lyricsto verseVocal 
  %\context Lyrics \lyricmode  \with { alignBelowContext = "melodyStaff" }
  %\lyricsto verseMelody 
  {
  % And the |
   way that she | moves2 on8 the8 | dance4 floor2 | \skip 1
   as  her hair | gathers the | light | \skip 1
  }

  \new Lyrics \lyricsto verseVocal 
  { \set stanza = "2. "
  % And the |
  way that she | floats2 cross8 the8 | dance4 floor2 | \skip 1
  % the
  r8 "the way"4.  she4 | moved2 through8 -- the8 | light1 | \skip 1

  \skip 4
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
	
%    \keepWithTag #'BiscuitUkeFretboard \new FretBoards 
%    %\removeWithTag #'BiscuitUkeFretboard \new FretBoards 
%	{
%		\tag #'BiscuitUkeFretboard
%		{
%    	\set Staff.stringTunings = #biscuitTuning
%    	\override FretBoard
%        	#'(fret-diagram-details string-count) = #'4
%    	\override FretBoard
%        	#'(fret-diagram-details finger-code) = #'in-dot
%		}
%	  	
%	}
	\new ChordNames 
	{
		%\with { midiInstrument = #"acoustic guitar (nylon)" }
		\time 3/4
		{
		    \verseChords
		    \pageBreak
		    \chorusChords
		}	
	}

	\new Voice = "vocal"
	{
		\tempo "Allegro" 4 = 116
		%\tempo "Moderato" 4 = 92
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
							%\chorusMelody
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
		%\verseLyrics
		%\chorusLyrics
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