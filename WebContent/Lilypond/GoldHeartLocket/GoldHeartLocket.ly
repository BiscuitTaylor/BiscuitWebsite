\version "2.14.0"

date = #(strftime "%Y.%m.%d" (localtime (current-time)))
hour = #(strftime "%H:%M" (localtime (current-time)))
\header {
  title = "Gold Heart Locket"
  composer = "Jeff Black"
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
%\include "predefined-guitar-fretboards.ly"
%\include "../fretboards/biscuit-fretboards.ly"


verseChords = \chordmode 
{	
			\tempo "Larghetto (rather broadly)" 4 = 65
	
	%Big chord names, so old geezers can percieve them			
	\override ChordName #'font-size = #2 
	%Bold chord names, so old geezers can grok them			
	\override ChordName #'font-series = #'bold
    %\set predefinedDiagramTable = #custom-fretboard-table-open-e
 	d1 | d2 a2 | e1:min | g2 d2 |
	d1 | d2 a2 | e1:min | g2 d2 |
}

chorusChords = \chordmode 
{
	 g1 | d1 | a1 | e1:min |
	 \break
	 g1  | d1  | a1  | e1:min |
	 \break
	 g2 a2 | d1 
}

bridgeChords = \chordmode 
{
	 e1:min | g2 a2 | e1:min | g2 a2 | e1:min | g2 a2 | e1:min | g2 a2 |
	 \break
	 a2
}


verseLyrics = 
<<
  \new Lyrics 
  {
	\override LyricText #'font-size = #2	% increase font by two 'sizes'

	\lyricmode {
	% Apostrophe within quotes doesn't work, so use alternative method of grouping words together
	All_night_long_I've_been2 riding,_riding2 |
	"I should have been there by"2 \noBreak "now; but these"2 |
	"old county roads got a"2 \noBreak "lot of deep holes, and the"2
	"rain keeps pouring"2 \noBreak "down.  The"2
	\break
	"bridge is washed out and the"2 "rising rising"2
	"waters of the river rush"2 \noBreak by_and_I'm2
	up_to_my_fenders_in_mu-2 \noBreak "d and to my witness a-"2
	bove_I'm_really_stuck_this2 \noBreak time2
	}
  }

  \new Lyrics 
  {
	\override LyricText #'font-size = #1	% increase font by one 'sizes'
 	\lyricmode
	  {\set stanza = "2. "
		Open_it_up_and_she's2 lovely_lovely2
		"eyes of hazel"2 green2
		"but I close it up fast 'cause the"2 "rain gets past, and lays a"2
		"tear down on her"2 "cheek.  I"2
		promised_her_once_that_I'd2 "never ever"2
		"break her heart a-"2 "gain; so lord"2
		"take me there, with a"2 "silent prayer, and her"2
		"locket in my"2 hand"2
	  }
  }
>>

chorusLyrics = 
{
	\new Lyrics
	{
		\override LyricText #'font-size = #2	% increase font by two 'sizes'
	 	\lyricmode
		{
		I've_got_a_gold_heart_locket_on_a_silver_chain_clenched1
		"tight in my fist in the pouring rain; and the"1
		"only road back home again is"1
		"all but washed away"1
		_I'm_going_to_cross_that_river_tonight,_no1
		"matter what it takes; al-"2 \noBreak "though I might die"2
		"trying; my true love will re-"1
		"main... in a"1
		"gold heart locket on a"2 "silver"2 chain1
		}
	}
}

bridgeLyrics = 
{
	\new Lyrics 
	{
		\override LyricText #'font-size = #2	% increase font by two 'sizes'
		\lyricmode
		{
	  	"The last thing I remember, I was"1
		"fearing for my"2 \noBreak "life; she was"2
		"calling out my name, from over"1
		"on the other"2 side2
		"I reached out to hold her, but the"1
		"break was just too"2 "strong; and the"2
		"silence just gets colder, as the"1
		"river rages"2 \noBreak on2
		}
	}
}

%chorusMelody =
%\new Voice = "chorusVocal"
%{
%	%"matter what it takes"
%	e8 e16 e16 e8 d8 e16 e16 e16 g8. |
%}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score
{
<<
%    \new FretBoards 
%	{
%		{
%			\verseChords
%			\chorusChords
%			
%			\bridgeChords
%		}	
%	}
	\new ChordNames 
	{
		{
			\verseChords
			\chorusChords
			
			\bridgeChords
		}	
	}
  
	%Lyrics
	\new Lyrics
	{
		%TODO - add coda here
		\verseLyrics
		\pageBreak
		%TODO - add D.S. al coda
		\chorusLyrics
		\break

		\bridgeLyrics
	}

	% Enable this to write the notes of each chord on a new staff below the melody staff
%	\new Staff 
%	{
%		\verseChords
%		\chorusChords
%		\bridgeChords
%	}	

>>

  \layout { indent = 0.0\cm }
  \midi {}
} 

% ****************************************************************
% end ly snippet
% ****************************************************************