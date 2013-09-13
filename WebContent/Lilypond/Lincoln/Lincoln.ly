\version "2.16.1"

date = #(strftime "%Y.%m.%d" (localtime (current-time)))
hour = #(strftime "%H:%M" (localtime (current-time)))
\header {
  title = "Lincoln's Waltz"
  composer = "Deborah Haight"
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

              c2. | c2.:maj7 | c2.:7 | f2. | \break
              f2. | g2.:7 | g2. | c2. | \break
              
              c2. |c2. | g2. | g2. | \break
              a2.:min | c2.:7 | g2. | c2. | \break
              c2. a2.:min | c2.:7 | f2. | \break
              f2. | g2.:7 | g2. | c2.
}



verseMelody =
\new Voice = "Ukulele 1"
{
 
  c''4_\markup { \italic "Lincoln's cross-step" } <c' e'>4 <c' e'>4 | b'4 <c' e'>4 <c' e'>4 | bes'4 <c' e'>4 <c' e'>4  | a'4 <a f'>4 <a f'>4  | \break

   <a f'>2. | d'8 f'8 b'8 b'4. | a'4 g'4 f'8 e'8~ | e'4~<g c' e' g'>4 <g c' g'>4\break

  % Birdie's interlude
  <c' c''>4_\markup { \italic "Birdie's interlude" } <d'( d''>4 <e') e''>4-\markup { "h" } | <d' a' e''>8 <c' g' d''>8 <d' e' c''>8 <c' g' d''>8 <c' e' c''>8 r8 |
  
  d''4 e''4 <b' f''>8 e''8| <b' f''>8 e'8 <b'' f'>8 e'8 <g' d''>4 |


  b'8_\markup { \italic "Loping in the park" } c''8 d''8 b'8 c''8 d''8  | <d' g'>4 <a e'>4 <d' g'>4 |
%END of perfection

  c'4 d'4 e'4 | e'8 d'8 c'8 d'8 c'8 r8 |

  c''4_\markup { \italic "cross-step reprise" } <c' e'>4 <c' e'>4 | b'4 <c' e'>4 <c' e'>4 | bes'4 <c' e'>4 <c' e'>4  | a'4 <a f'>4 <a f'>4  | \break

   <a f'>2. | d'8 f'8 b'8 b'4. | a'4 g'4 d''8 a'8~ | <a' c''>4 <g c' g'>4 <g c' g'>4 \break
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score
{
<<
	
	\new ChordNames 
	{
		%\with { midiInstrument = #"acoustic guitar (nylon)" }
		\time 3/4
		{
		    \verseChords
		}	
	}

	\new Voice = "vocal"
	{
		\tempo "Allegro" 4 = 116
		%\tempo "Moderato" 4 = 92
		%\markup { (1.53 Hz) }
		%NOT \relative c'
		{
			\numericTimeSignature
			\time 3/4
			\repeat volta 2 
			{
				%\new Staff = "melodyStaff"
				{
					{
						\key c \major	
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
  
	% Enable this to write the notes of each chord on a new staff below the melody staff
	%\new Staff \chorusChords
>>

  \layout { indent = 0.0\cm }
  \midi {}
} 

% ****************************************************************
% end ly snippet
% ****************************************************************