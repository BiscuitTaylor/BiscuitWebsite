\version "2.16.2"

date = #(strftime "%Y.%m.%d" (localtime (current-time)))
hour = #(strftime "%H:%M" (localtime (current-time)))
\header {
  title = "I Saw The Light"
  composer = "Todd Rundgren"
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
  % Try to add space between the lines, to stretch out the page
  between-system-space = 2.5\cm % has no effect
  between-system-padding = #5	% has no effect
}


% ****************************************************************
% Fingerboard diagrams:
% ****************************************************************
% If using standard predefined fretboards,
% (see \keepWithTag at the start of the \score section)
% you can comment-out the biscuit-fretboards include. 
%\include "../fretboards/biscuit-fretboards.ly"
\include "../fretboards/lowg-fretboards.ly"
%\include "predefined-guitar-fretboards.ly"
\include "predefined-ukulele-fretboards.ly"

defineMyFretboard =
<<
%\tag #'StandardGuitarFretboard
%{
%  %Nothing to define... defaults work just fine
%  %\set predefinedDiagramTable = #default-fret-table
%}
%\tag #'BiscuitUkeFretboard
%{
%  %define fretboard diagrams for open-g tenor ukulele
%  \biscuitCustomFretboards
%  %\set predefinedDiagramTable = #custom-fretboard-table-uptheneck
%}
\tag #'LowGUkeFretboard
{
  %define fretboard diagrams for c6 tenor ukulele (low-g)
  \lowGCustomFretboards
}

>>

%biscuitCustomFretboards =
%{
%  \set stringTunings = #biscuitTuning
%}
lowGCustomFretboards =
{
  \set stringTunings = #lowGUkeTuning
}

%biscuitUkeFingering =
%{
%	\tag #'BiscuitUkeFretboard
%	{
%	\set stringTunings = #biscuitTuning
%	\override FretBoard
%    	#'(fret-diagram-details string-count) = #'4
%	\override FretBoard
%    	#'(fret-diagram-details finger-code) = #'in-dot
%	}
%}

lowGUkeFingering =
{
	\tag #'LowGUkeFretboard
	{
	\set stringTunings = #lowGUkeTuning
	\override FretBoard
    	#'(fret-diagram-details string-count) = #'4
	\override FretBoard
    	#'(fret-diagram-details finger-code) = #'in-dot
	}
}


verseChords = \chordmode 
{	
	%Super-Big chord names, because we have room			
	\override ChordName #'font-size = #4 
	%Bold chord names, so old geezers can grok them			
	\override ChordName #'font-series = #'bold
    \set predefinedDiagramTable = #default-fret-table
    c1
	d1:min7 g1 d1:min7 g1
	d1:min7 g1 c1:maj7 e1:min
	
	d1:min7 g1 d1:min7 g1
	d1:min7 g1 c1:maj7 c1:7
}

lameChorusChords = \chordmode 
{	
	%Super-Big chord names, because we have room			
	\override ChordName #'font-size = #4 
	%Bold chord names, so old geezers can grok them			
	\override ChordName #'font-series = #'bold
    %\set predefinedDiagramTable = #custom-fretboard-table-open-e
    \set predefinedDiagramTable = #default-fret-table

	c1:7
	f1:maj7 e1:min7  a1:min  d1:7
	d1:min7 g1       c1:maj7 d:min7   c1:maj7 d:min7

}
chorusChords = 
{	
	%Super-Big chord names, because we have room			
	\override ChordName #'font-size = #4 
	%Bold chord names, so old geezers can grok them			
	\override ChordName #'font-series = #'bold
    \set predefinedDiagramTable = #default-fret-table

	%c:7
	<bes e' g' c''>1
	%f:maj7  e:min7    a:min         d:7
	<c' f' a' e''>1  <d' g' b' e''>1  <e' a' c'' e''>1  <c' fis' a' d''>1
	%d1:min7 g1       c1:maj7 d:min7   c1:maj7 d:min7

}

verseIntroChords = \chordmode 
{	
	%Super-Big chord names, because we have room			
	\override ChordName #'font-size = #4 
	%Bold chord names, so old geezers can grok them			
	\override ChordName #'font-series = #'bold
    %\set predefinedDiagramTable = #custom-fretboard-table-open-e
    \set predefinedDiagramTable = #default-fret-table
    
    \partial 4 g4 |

}

% notes:
%                  
% Intro: DaddE -> D
% In other words hammer-on the first string as you hit the opening D. 


verseLyrics = 
<<
  \new Lyrics 
  {
	\lyricmode {
  "It was"1 
  "late last"1 "night I was"1
  "feeling something wasn't"1 "right; There was"1 
  "not another soul in"1 "sight, Only"1 
  "you"1

  "So we"1 
  "walked a-"1 "long, Though I"1 
  "knew that there was something"1 "wrong, And a"1
  "feeling hit me, so"1 "strong   About"1 
  you1
  }
  }
  
  \new Lyrics 
  { \lyricmode
  {\set stanza = "2. "
  "Though we"1
  "had   our"1 "fling,   I just"1
  "never did suspect a"1 "thing ... Till that"1 
  "little bell began to"1 "ring - In my"1
  head

 "But I"1
  "tried to"1 "run,  Though I"1 
  "knew it wouldn't help me"1 "none,  cause I"1
  "couldn't ever"1 "love no"1 
  "one -  or so I"1 "said"1
  }
  }
  
  \new Lyrics 
  { \lyricmode
  {\set stanza = "3. "
  "Baby I"1
  "love you"1 "best;   It' not"1
  "something that I say in"1 "jest ... Cause you're"1 
  "different from all the "1 "rest - In my"1
  eyes1 \skip1

 "But I"1
  "tried to"1 "run,  Though I"1 
  "knew it wouldn't help me"1 "none,  cause I"1
  "couldn't ever"1 "love no"1
  "one -  or so I"1 "said"1
  }
  }
  
>> 

guitarSolo = 
<<
	\repeat unfold 6 { \skip 1 }	% guitar solo
>> 

chorusLyrics = 
<<
  \new Lyrics 
  {
	\lyricmode {
"Then you "1
"gazed up at"1 "me ... And the"1
"answer was plain to"1 "see, Cause I"1 \break
"saw the"1 "light In your"1
"eyes"1 "In your "1 "eyes"1 "."1        

  }
  }
  
  \new Lyrics 
  { \lyricmode
  {\set stanza = "2. "
"But my"1
"feelings for"1 "you Were just"1
"something I never"1 "knew Til I"1
"saw the"1 "light In your"1
"eyes"1 "In your"1  "eyes"1  "."1      
  }
  }

  \new Lyrics 
  { \lyricmode
  {\set stanza = "3. "
"And I"1
"ran out"1 "before, But I"1
"won't do it any"1 "more Can't you"1 
"see the"1 "light In my"1 "eyes in my"1 "eyes"1
  }
  }

>> 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score
{
    \keepWithTag #'LowGUkeFretboard
	%keep only sections tagged BiscuitUkeFretboard
    %\keepWithTag #'BiscuitUkeFretboard
    %\keepWithTag #'StandardGuitarFretboard
	%ignore all sections tagged StandardGuitarFretboard
%    \removeWithTag #'StandardGuitarFretboard 
%    \removeWithTag #'BiscuitUkeFretboard 
<<
    \new FretBoards 
	{
        \defineMyFretboard
		{
			%\transpose d a
		    \verseChords
		}
	}

	\new ChordNames 
	{
		% \with { midiInstrument = #"acoustic guitar (nylon)" }
		{
			%\transpose d a
		    \verseChords
		}	
	}
  
	%Lyrics
	\new Lyrics 
	{
		\verseLyrics
	}

	% Enable this to write the notes of each chord on a new staff below the melody staff
%	\new Staff
%	{
%		\verseChords
%	 }
>>

  \layout { indent = 0.0\cm }
  \midi {}
} 
\pageBreak
\score
{
    \keepWithTag #'LowGUkeFretboard
	%keep only sections tagged BiscuitUkeFretboard
    %\keepWithTag #'BiscuitUkeFretboard
    %\keepWithTag #'StandardGuitarFretboard
	%ignore all sections tagged StandardGuitarFretboard
%    \removeWithTag #'StandardGuitarFretboard 
%    \removeWithTag #'BiscuitUkeFretboard 
<<
    \new FretBoards 
	{
        \defineMyFretboard
		{
			%\transpose d a
		    \chorusChords
		}
	}

	\new ChordNames 
	{
		% \with { midiInstrument = #"acoustic guitar (nylon)" }
		{
			%\transpose d a
		    \lameChorusChords
		}	
	}
  
	% Enable this to write the notes of each chord on a new staff below the melody staff
	\new Staff
	{
		\chorusChords
	 }
	%Lyrics
	\new Lyrics 
	{
		\chorusLyrics
	}
>>

  \layout { indent = 0.0\cm }
} 

% ****************************************************************
% end ly snippet
% ****************************************************************