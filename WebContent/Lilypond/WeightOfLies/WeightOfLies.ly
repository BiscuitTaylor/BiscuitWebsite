\version "2.14.0"

date = #(strftime "%Y.%m.%d" (localtime (current-time)))
hour = #(strftime "%H:%M" (localtime (current-time)))
\header {
  title = "Weight Of Lies"
  composer = "Avett Brothers"
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
	%Big, bold chord names, so old geezers can see them			
	\override ChordName #'font-size = #2 
	\override ChordName #'font-series = #'bold

	%\set Staff.midiInstrument = #"acoustic guitar (nylon)"
	a1 | a/gis1 |
	fis1:min | e1 |  d2 d2:sus2
	a1 | a/gis1 |
	fis1:min | e1 |  d2 d2:sus2
}

chorusChords = \chordmode 
{	
	%Big, bold chord names, so old geezers can see them			
	\override ChordName #'font-size = #2 
	\override ChordName #'font-series = #'bold

	a1 | d1 | fis1:min | e1 |
	a1 | d1 | e1 |
}

verseMelody =
\new Voice = "verseVocal"
{
  bes4 bes4 bes2 | a2 ~ a8 g8 ~ g8 a8 | b2 g2 | r1 | \break
  r4 r8 b8 ~ b8 g8 ~ g8 e8 | a2 \times 2/3 { g4 g4 a4 } | b1| r1 | \break
  r4 c8 c8 ~ c4 b8 a8 | c4 b16 a16 g8 ~ g4 r4 | \break
  r4 c8 c8 d8 c8 ~ c8 c16 b16 | c4 b8 g8 ~ g8 (e8 g16 a16 ~ a8) | \break
  r4 r8 a8 ~ a4 g8 f8 | e2 r8 c8 ~ c8 d8 | g4 a4 r2 | r1 |
}


verseLyrics = 
<<
  %\new Lyrics  \lyricsto verseVocal 
  \new Lyrics  
  %\context Lyrics \lyricmode  \with { alignBelowContext = "melodyStaff" }
  %\lyricsto verseMelody 
  %\override LyricText #'font-size = #2	% increase font by two 'sizes'
  {
  \lyricmode {
  		"Disappear from your"1 "hometown"1
		"Go and find the"1 "people that you"1 "know"1 \break
		"Show them all your"1 "good parts"1
		"Leave town when the"1 "bad ones start to show"1 ""1 \break
	  }
  }

  %\new Lyrics  \lyricsto verseVocal 
  \new Lyrics  
  {
  \lyricmode
	  { \set stanza = "2. "
		"Go and wed a"1 "woman - a"1
		"pretty girl"1 "that youÕve never met"1 ";  Make"1
		"sure she knows you"1 "love her well  but"1
		"donÕt make any"1 "other promis-"1 "es.   The"1
	  }
  }
  %\new Lyrics  \lyricsto verseVocal 
  \new Lyrics  
  {
  \lyricmode
	  { \set stanza = "3. "	
		"I once heard the"1 "worst thing"1
		"A man can do is"1 "draw a hungry crowd"1
		"Tell everyone his"1 "name with pride and"1 "confidence"1
		"But leaving out his"1 "doubt"1 ""1
	  }
  }
  %\new Lyrics  \lyricsto verseVocal 
  \new Lyrics  
  {
  \lyricmode
	  { \set stanza = "4. "	
		"IÕm not sure I"1 "bought those words"1
		"When I was young I"1 "knew most everything"1
		"These words have never"1 "meant as much to"1 "anyone"
		"As they now mean to"1 "me"1 ""1
	  }
  }
>>

chorusLyrics = 
<<
  \new Lyrics  
  {
  \lyricmode {
  		"weight of lies will"1 "bring you down, and"1
		"follow you to"1 "every town, 'cause"1 \break
		"nothing happens"1 "here that doesnÕt"1 "happen there"1 "So"1
	  }
  }
  \new Lyrics  
  {
  \lyricmode { \set stanza = "2. "	
		"when you run make"1 "sure you run to"1
		"something and not"1 "away from, 'cause"1
		"lies donÕt need an"1 "aeroplane to"1 "chase you anywhere"1
	  }
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
	
    %\keepWithTag #'BiscuitUkeFretboard \new FretBoards 
    \removeWithTag #'BiscuitUkeFretboard \new FretBoards 
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
			\transpose a g
		    \verseChords
			\transpose a g
		    \chorusChords
		}
	}
	\new ChordNames 
	{
		%\with { midiInstrument = #"acoustic guitar (nylon)" }
		{
	    	%\introChords
			\transpose a g
		    \verseChords
			\transpose a g
		    \chorusChords
		}	
	}

%	\new Voice = "vocal"
%	{
%		\tempo "Andante - 1.53 Hz " 4 = 92
%		%\tempo "Andante " 4 = 92
%		%\markup { (1.53 Hz) }
%		\relative c''
%		{
%			\numericTimeSignature
%			\time 4/4
%	  		%\introMelody
%			\repeat volta 4 
%			{
%				%\new Staff = "melodyStaff"
%				{
%					\key c \major	
%				    \set Staff.midiInstrument = #"ocarina"
%					%\numericTimeSignature
%					%\time 4/4
%					{
%					    \verseMelody
%					}
%				}
%			}
%
%		}
%	}
  
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