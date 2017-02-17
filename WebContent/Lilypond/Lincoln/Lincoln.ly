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
      c2. | c2.:maj7 | c2.:7 | f2. | \break
      f2. | g2.:7 | g2. | c2. | \break
      
      c2. |c2. | g2. | g2. | \break
      %a2.:min | c2.:7 | g2. | c2. | \break
      a2.:min | e2.:min | g2. | c2. | \break

      c2. c2.:maj7 | c2.:7 | f2. | \break
      f2. | g2.:7 | g2. | c2.
}


% absolute pitch
firstUke =
\new Voice = "Uke 1"
{
  c''4^\markup { \italic "Lincoln's cross-step" } <c' e'>4 <c' e'>4 | b'4 <c' e'>4 <c' e'>4 |
  bes'4 <c' e'>4 <c' e'>4  | a'4 <a f'>4 <a f'>4  | \break

  <a f'>2. | d'8 f'8 b'8 b'8~ b'4 | a'4 g'4 f'8 e'8~ | e'2. \break

  % Birdie's interlude
  <c''>4^\markup { \italic "Birdie's interlude" } <d''>4( <e''>4) |
  <e''>8 <d''>8 <c''>8 <d''>8 <c''>8 r8 |
  
  d''4 e''4 <f''>8 e''8|
  <f''>8 e''8 <f''>8 e''8 <g' d''>4 |


  b'8^\markup { \italic "Loping in the park" } c''8 d''8 b'8 c''8 d''8  |
   <g'>4 <e'>4  <g'>4 |

  %c'4 d'4 e'4 | e'8 d'8 c'8 d'8 c'8 r8 |
  b'2 <d' g'>4 | b'4 <g' c''>4  r4 |

  c''4^\markup { \italic "cross-step reprise" } <c' e'>4 <c' e'>4 | b'4 <c' e'>4 <c' e'>4 |
  bes'4 <c' e'>4 <c' e'>4  | a'4 <a f'>4 <a f'>4  | \break

  <a f'>2. | d'8 f'8 b'8 b'8~ b'4 | a'4 r4 r8 a'8~ | <a'>4 <g c' g'>4 <g c' g'>4 \break
}

secondUke =
\new Voice = "Uke 2"
{
  r4 <c' e'>4 <c' e'>4 | r4 <c' e'>4 <c' e'>4 |
  r4 <c' e'>4 <c' e'>4  | r4 <a f'>4 <a f'>4  | \break

  <a f'>2. | r2. | <d' g' b'>2. | r4 <g c' g'>4 <g c' g'>4 \break

  % Birdie's interlude
  <c'>4 <d'>4( <e'>4) |
  <d' a'>8 <c' g'>8 <c' e'>8 <c' g'>8 <c' e'>8 r8 |
  
  r4 r4 <b'>4 |
  <b'>4 <b'>4 <g'>4 |

  b'8 c''8 d''8 b'8 c''8 d''8  |
  <d'>4  <\tweak #'color #grey a>4 
  <d'>4 |
  %b'8 c''8 d''8 b'8 c''8 d''8  | <d' g'>4 e'4 <d' g'>4 |

  %c'4 d'4 e'4 | e'8 d'8 c'8 d'8 c'8 r8 |
  b'2 <d' g'>4 | b'4 <g' c''>4  r4 |

  r4 <c' e'>4 <c' e'>4 | r4 <c' e'>4 <c' e'>4 |
  r4 <c' e'>4 <c' e'>4  | r4 <a f'>4 <a f'>4  | \break

   <a f'>2. | r2. | r4 g'4 d''4 | <c''>4 <g c' g'>4 <g c' g'>4 \break
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\markup { \left-align { \line { Tenor Ukulele (low-g) } } }
  
\score {
<<
	\new Voice = "Ukulele I"
	{
		\tempo "Andante" 4 = 84

		%NOT \relative c'
		{
			\numericTimeSignature
			\time 3/4
			{
				%\new Staff = "melodyStaff"
				{
					{
						\key c \major	
					    %\set Staff.midiInstrument = #"ukulele"
					    \set Staff.midiInstrument = #"harpsichord"
					    \set Staff.instrumentName = #"Uke I"
					    
						{
						    \firstUke
						}
					}
				}
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
		{
			\numericTimeSignature
			\time 3/4
			{
%				% Add an empty staff below the default one
%				%\new Staff = "harmonyStaff"
%				{
%				    \repeat unfold 18 { s1 }		
%				}
				%\set Staff.midiInstrument = #"acoustic guitar (nylon)"
				\set Staff.midiInstrument = #"cello"
				\set Staff.instrumentName = #"Uke II"
				\secondUke
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
% ****************************************************************