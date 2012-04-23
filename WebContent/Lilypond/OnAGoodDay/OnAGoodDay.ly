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
	%Big chord names, so old geezers can percieve them			
	\override ChordName #'font-size = #2 
	%Bold chord names, so old geezers can grok them			
	\override ChordName #'font-series = #'bold

	%\set Staff.midiInstrument = #"acoustic guitar (nylon)"
	bes2 ees2 | f2  bes2 |
	d2:min g2:min | d2:min g2:min %|  
    bes2 f2 | d2:min g2:min | ees2 bes2 | f2 bes2
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
	  "Hey, hey,"2  "hey - the"2 \noBreak "end is near."2  "On a"2 
	  "good day"2  "you can see the"2 | "end from here;"2 "and I"2 |
	  "won't turn"2 "back now, though the"2 | "way is"2 "clear; I will"2 |
	  "stay for"2 "the re-"2 | "main-"2  der2
	  }
  }

  %\new Lyrics  \lyricsto verseVocal 
  \new Lyrics  
  {
  \lyricmode
	  { \set stanza = "2. "
	  "I saw a"2 "life and I"2 | "called it"2 "mine - I"2 |
	  "saw it"2 "drawn so"2 | "sweet and"2 "fine ... that I"2 |
	  "had be -"2 "gun to fill in"2 | "all the lines"2 "right"2 |
	  "down to"2  what_we'd2 | name2 | her2
	  }
  }
  %\new Lyrics  \lyricsto verseVocal 
  \new Lyrics  
  {
  \lyricmode
	  { \set stanza = "3. "	
	  "Our nature"2 "does not"2 | "change by"2 "will; in the"2 |
	  "winter"2 'round_the2 | "ruined"2 "mill - the"2 |
	  "creek is"2 "lying"2 | "flat and"2 "still; it is"2 |
	  water2 but_it's2 | "fro-"2 zen2
	  }
  }
  %\new Lyrics  \lyricsto verseVocal 
  \new Lyrics  
  {
  \lyricmode
  { \set stanza = "4. "	
  "So 'cross the"2 "years, and"2 | "miles and"2 "through - On a" | 
  "good day,"2 "you can feel my"2 | "love for"2 "you; Will you"2 |
  "leave me"2 "be so that we"2 | "can stay"2 "true... to the"2 |
  "path that"2 "you have"2 | "cho-"2 sen2
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
			\transpose bes g
		    \verseChords
		}
	}
	\new ChordNames 
	{
		%\with { midiInstrument = #"acoustic guitar (nylon)" }
		{
	    	%\introChords
			\transpose bes g
		    \verseChords
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