\version "2.16.1"

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
\include "predefined-guitar-fretboards.ly"
\include "../fretboards/biscuit-guitar-fretboards.ly"
% If using standard guitar fretboards,
% (see \keepWithTag at the start of the \score section)
% you can comment-out the biscuit-fretboards include. 
\include "../fretboards/biscuit-fretboards.ly"

defineMyFretboard =
<<
\tag #'StandardGuitarFretboard
{
  %Nothing to define... defaults work just fine
}
\tag #'BiscuitUkeFretboard
{
  %define fretboard diagrams for open-g tenor ukulele
  \biscuitCustomFretboards
}
>>

verseChords = \chordmode 
{	
	%Super-Big chord names, because we have room			
	\override ChordName #'font-size = #4 
	%Bold chord names, so old geezers can grok them			
	\override ChordName #'font-series = #'bold
    \set predefinedDiagramTable = #default-fret-table
  g''1     d1    g''1            
  d1     g''1    d1  
  a''1     g''1    a''1    
  b'1:min c1    g''1     c1      
  d1     a''1    c1     g''1    
  d1     a''1    c1     g''1    
}

verseAlternateChords = \chordmode 
{	
	%Super-Big chord names, because we have room			
	\override ChordName #'font-size = #4 
	%Bold chord names, so old geezers can grok them			
	\override ChordName #'font-series = #'bold
    %\set predefinedDiagramTable = #custom-fretboard-table-open-e
    \set predefinedDiagramTable = #default-fret-table
  g''1     d   g''1            
  d1     g''1    d1  
  a''1     g''1    a''1    
  b'1:min c,,,,1    g1     c1      
  d1     a''1    c1     g1    
  d1     a''1    c1     g''1    
}

verseNominalChords = \chordmode 
{	
	%Super-Big chord names, because we have room			
	\override ChordName #'font-size = #4 
	%Bold chord names, so old geezers can grok them			
	\override ChordName #'font-series = #'bold
    %\set predefinedDiagramTable = #custom-fretboard-table-open-e
    \set predefinedDiagramTable = #default-fret-table
  g''1     d   g''1            
  d1     g''1    d1  
  a''1     g''1    a''1    
  b'1:min c1    g''1     c1      
  d1     a''1    c1     g''1    
  d1     a''1    c1     g''1    
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
  "It was" 
  "late last" "night I was"
  "feeling something wasn't" "right; There was" 
  "not another soul in" "sight, Only" 
  "you"

  }
  }

  \new Lyrics 
  { \lyricmode
  {\set stanza = "2. "
  "So we" 
  "walked a-" "long, Though I" 
  "knew that there was something" "wrong, And a"
  "feeling hit me, so" "strong   About" 
  you
  }
  }
  
  \new Lyrics 
  { \lyricmode
  {\set stanza = "3. "
  "Though we"
  "had   our" "fling,   I just"
  "never did suspect a" "thing ... Till that" 
  "little bell began to" "ring - In my"
  head
  }
  }
  
  \new Lyrics 
  { \lyricmode
  {\set stanza = "4. "
  "But I"
  "tried to" "run,  Though I" 
  "knew it wouldn't help me" "none,  cause I"
  "couldn't ever" "love no" 
  "one -  or so I" "said"
  }
  }
>> 

  


%It was [Dm7]late last [G]night, 
%I was [Dm7]feeling something wasn't [G]right,
%There was [Dm7]not another soul in [G]sight, 
%Only [Cmaj7]you, only you[Em]
%
%So we [Dm7]walked [G]along, 
%Though I [Dm7]knew that there was something [G]wrong, 
%And a [Dm7]feeling hit me, oh, so [G]strong 
%About [Cmaj7]you        [C7] 
%
%Then you [Fmaj7]gazed up at [Em7]me 
%And the [Am]answer was plain to [D7]see, 
%Cause I [Dm7]saw the [G]light 
%In your [Cmaj7]eyes     [Dm7]        
%In your [Cmaj7]eyes     [Dm7]         
%
%Though we [Dm7]had our [G]fling, 
%I just [Dm7]never would suspect a [G]thing 
%Till that [Dm7]little bell began to [G]ring 
%In my [Cmaj7]head, in my [Em]head
%
%But I [Dm7]tried to [G]run, 
%Though I [Dm7]knew it wouldn't help me[G]none,
%[Dm7]cause I couldn't ever [G]love no one, 
%or so I [Cmaj7]said       [C7] 
%
%But my [Fmaj7]feelings for [Em7]you 
%Were just [Am]something I never [D7]knew 
%Til I [Dm7]saw the [G]light 
%In your  [Cmaj7]eyes   [Dm7]    
%In your  [Cmaj7]eyes   [Dm7]        
%
%Guitar solo over verse chords:
%[Dm7]  [G]    [Dm7]   [G]    [Dm7]      [G]     [C]        [Em]          
%
%Baby, I [Dm7]love you [G]best, 
%It's not [Dm7]something that I say in [G]jest,
%Cause you're [Dm7]different from all the [G]rest 
%In my [Cmaj7]eyes       [C7]
%
%And I [Fmaj7]ran out [Em7]before, 
%But I [Am]won't do it any[D7]more
%Can't you [Dm7]see the [G]light 
%
%In my [Cmaj7]eyes


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score
{
	%keep only sections tagged BiscuitUkeFretboard
    \keepWithTag #'BiscuitUkeFretboard
    %\keepWithTag #'StandardGuitarFretboard
	%ignore all sections tagged StandardGuitarFretboard
    %\removeWithTag #'StandardGuitarFretboard 
<<
    \new FretBoards 
	{
        \defineMyFretboard
		{
			%\transpose d a
		    \verseNominalChords
		}
	}

	\new ChordNames 
	{
		% \with { midiInstrument = #"acoustic guitar (nylon)" }
		{
			%\transpose d a
		    \verseNominalChords
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
	%keep only sections tagged BiscuitUkeFretboard
    \keepWithTag #'BiscuitUkeFretboard
    %\keepWithTag #'StandardGuitarFretboard
	%ignore all sections tagged StandardGuitarFretboard
    %\removeWithTag #'StandardGuitarFretboard 
<<
    \new FretBoards 
	{
        \defineMyFretboard
		{
			%\transpose d a
		    \verseNominalChords
		}
	}

	\new ChordNames 
	{
		% \with { midiInstrument = #"acoustic guitar (nylon)" }
		{
			%\transpose d a
		    \verseNominalChords
		}	
	}
  
	%Lyrics
	\new Lyrics 
	{
        \verseAlternateChordLyrics
	}

	% Enable this to write the notes of each chord on a new staff below the melody staff
	\new Staff
	{
		\verseNominalChords
	 }
>>

  \layout { indent = 0.0\cm }
} 

% ****************************************************************
% end ly snippet
% ****************************************************************