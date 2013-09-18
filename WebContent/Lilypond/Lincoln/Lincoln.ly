\version "2.16.2"

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
% paper and global
% ****************************************************************
#(set-global-staff-size 22)		% Default staff-size is 20-point

\paper {
  indent = 0\mm
  line-width = 160\mm
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}


% ****************************************************************
% the music:
% ****************************************************************
%\include "../fretboards/biscuit-fretboards.ly"
\include "predefined-guitar-fretboards.ly"

verseChords = \chordmode 
{	
	%\set Staff.midiInstrument = #"acoustic guitar (nylon)"

      c2. | c2.:maj7 | c2.:7 | f2. | \break
      f2. | g2.:7 | g2. | c2. | \break
      
      c2. |c2. | g2. | g2. | \break
      %a2.:min | c2.:7 | g2. | c2. | \break
      a2.:min | e2.:min | g2. | c2. | \break

      c2. c2.:maj7 | c2.:7 | f2. | \break
      f2. | g2.:7 | g2. | c2.
}



verseMelody =
\new Voice = "Ukulele 1"
{
 
  c''4^\markup { \italic "Lincoln's cross-step" } <c' e'>4 <c' e'>4 | b'4 <c' e'>4 <c' e'>4 |
  bes'4 <c' e'>4 <c' e'>4  | a'4 <a f'>4 <a f'>4  | \break

  <a f'>2. | d'8 f'8 b'8 b'4. | a'4 g'4 f'8 e'8~ | e'4~<g c' e' g'>4 <g c' g'>4\break

  % Birdie's interlude
  <c' c''>4^\markup { \italic "Birdie's interlude" } <d' d''>4( <e' e''>4)-\markup { "h" } |
  <d' a' e''>8 <c' g' d''>8 <c' e' c''>8 <c' g' d''>8 <c' e' c''>8 r8 |
  
  d''4 e''4 <b' f''>8 e''8|
  <b' f''>8 e''8 <b' f''>8 e''8 <g' d''>4 |


  b'8^\markup { \italic "Loping in the park" } c''8 d''8 b'8 c''8 d''8  | <d' g'>4 
  %\override NoteHead #'color = #(x11-color 'grey) 
  <\tweak #'color #grey a 
  %\override NoteHead #'color = #black 
  e'>4 
  <d' g'>4 |
  %b'8^\markup { \italic "Loping in the park" } c''8 d''8 b'8 c''8 d''8  | <d' g'>4 e'4 <d' g'>4 |

  %c'4 d'4 e'4 | e'8 d'8 c'8 d'8 c'8 r8 |
  b'2 <d' g'>4 | b'4 <g' c''>4  r4 |

  c''4^\markup { \italic "cross-step reprise" } <c' e'>4 <c' e'>4 | b'4 <c' e'>4 <c' e'>4 |
  bes'4 <c' e'>4 <c' e'>4  | a'4 <a f'>4 <a f'>4  | \break

   <a f'>2. | d'8 f'8 b'8 b'4. | a'4 g'4 d''8 a'8~ | <a' c''>4 <g c' g'>4 <g c' g'>4 \break
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
<<
	

	\new Voice = "Ukulele I"
	{
		%\tempo "Adagio" 4 = 76
		\tempo "Adagio"

		%NOT \relative c'
		{
			\numericTimeSignature
			\time 3/4
			{
				%\new Staff = "melodyStaff"
				{
					{
						\key c \major	
					    \set Staff.midiInstrument = #"ocarina"
						{
						    \verseMelody
						}
					}
				}
				% Add an empty staff below the default one
%				\new Staff = "harmonyStaff"
%				{
%				    \repeat unfold 12 { s1 \break }
%				}
			}
			\break

		}
	}

	\new ChordNames 
	{
		%\with { midiInstrument = #"acoustic guitar (nylon)" }
		\time 3/4
		{
		    \verseChords
		}	
	}

	\new Voice = "Ukulele II"
	{
		\tempo "Adagio"
		{
			\numericTimeSignature
			\time 3/4
			{
				% Add an empty staff below the default one
				%\new Staff = "harmonyStaff"
				{
				    \repeat unfold 18 { s1 }		
				}
			}
			\break

		}
	}
  
	% Enable this to write the notes of each chord on a new staff below the melody staff
	%\new Staff \chorusChords
>>

  \layout { 
  	indent = 0.0\cm
  }
  \midi {}
} 

% ****************************************************************
% end ly snippet
% ****************************************************************