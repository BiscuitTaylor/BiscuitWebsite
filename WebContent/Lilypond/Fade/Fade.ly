\version "2.18.2"

date = #(strftime "%Y.%m.%d" (localtime (current-time)))
hour = #(strftime "%H:%M" (localtime (current-time)))
\header {
  title = "Fade"
  composer = "Lori Carson"
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
	\override FretBoard.fret-diagram-details.string-count = #'4
	\override FretBoard.fret-diagram-details.finger-code = #'in-dot
	}
}

% instead of using chordmode, explicitly specify each note in the chord.
% This way, we can get whatever inversion/chordshape we want.
verseChords =
{	
%	%Super-Big chord names, because we have room			
%	\override ChordName.font-size = #4 
%	%Bold chord names, so old geezers can grok them			
%	\override ChordName.font-series = #'bold
%    \set predefinedDiagramTable = #default-fret-table
    <c' e' g' c''>1
    
	%d1:min7 		g1              d1:min7          g1
    <c' f' a' d''>1 <b d' g' b'>1	<c' f' a' d''>1  <b d' g' b'>1 
	%d1:min7          g1               c1:maj7        e1:min
	<c' f' a' d''>1  <b d' g' b'>1   <c' e' g' b'>1  <b e' g' b'>2 <g e' g' b'>2
	
	%d1:min7 		g1              d1:min7          g1
    <c' f' a' d''>1 <b d' g' b'>1	<c' f' a' d''>1  <b d' g' b'>1 
	%d1:min7          g1               c1:maj7        c1:7
	<c' f' a' d''>1  <b d' g' b'>1   <c' e' g' b'>1  <bes e' g' c''>1
}
verseChordNames = \chordmode
{	
	\bigChordNames
%	%Super-Big chord names, because we have room			
%	\override ChordName.font-size = #4 
%	%Bold chord names, so old geezers can grok them			
%	\override ChordName.font-series = #'bold
%    \set predefinedDiagramTable = #default-fret-table
    c1
    
	d1:min7 		g1              d1:min7          g1
	d1:min7          g1               c1:maj7        e1:min
	d1:min7 		g1              d1:min7          g1
	d1:min7          g1               c1:maj7        c1:7
}


chorusChords = 
{	
%	%Super-Big chord names, because we have room			
%	\override ChordName.font-size = #4 
%	%Bold chord names, so old geezers can grok them			
%	\override ChordName.font-series = #'bold
%    \set predefinedDiagramTable = #default-fret-table
%
	%c:7
	<bes e' g' c''>1
	
	%f:maj7          e:min7           a:min             d:7
	<c' f' a' e''>1  <d' g' b' e''>1  <e' a' c'' e''>1  <c' fis' a' d''>1

	%d1:min7         g1               c1:maj7         d:min7            c1:maj7         d:min7
	<c' f' a' d''>1  <b d' g' b'>1   <c' e' g' b'>1  <c' f' a' d''>1   <c' e' g' b'>1  <c' f' a' d''>1  
}
chorusChordNames = \chordmode 
{	
	\bigChordNames
%	%Super-Big chord names, because we have room			
%	\override ChordName.font-size = #4 
%	%Bold chord names, so old geezers can grok them			
%	\override ChordName.font-series = #'bold
%    %\set predefinedDiagramTable = #custom-fretboard-table-open-e
%    \set predefinedDiagramTable = #default-fret-table
%
	c1:7
	f1:maj7 e1:min7  a1:min  d1:7
	d1:min7 g1       c1:maj7 d:min7   c1:maj7 d:min7

}

verseIntroChords = \chordmode 
{	
	%Super-Big chord names, because we have room			
	\override ChordName.font-size = #4 
	%Bold chord names, so old geezers can grok them			
	\override ChordName.font-series = #'bold
    %\set predefinedDiagramTable = #custom-fretboard-table-open-e
    \set predefinedDiagramTable = #default-fret-table
    
    \partial 4 g4 |

}


verseLyrics = 
<<
  \new Lyrics 
  {
	\lyricmode {

  "You come to me"1 "all the time"1 
  "while I sleep" 
  "speak in a way you never would"
  "speak in a way you never would"
  "speak in a way "
  "then you fade"
  "then you fade"
  "then you fade"
  }
  }
  
  \new Lyrics 
  { \lyricmode
  {\set stanza = "2. "
  "Hang by a thread "1 "not a rope"1
  "keep your head"
  "keep your head if you can"
   "keep your head"
  
  }
  }
  
  \new Lyrics 
  { \lyricmode
  {\set stanza = "3. "  
  "I think I remember"1
  "your hands are like mine"1 

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
"So much"1
"to find (beautiful)"1 
"So much"1
"to find (beautiful)"1 
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
		    \verseChordNames
		}	
	}
  
	\new Staff
	{
		\verseChords
	 }
	%Lyrics
	\new Lyrics 
	{
		\verseLyrics
	}
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
		    \chorusChordNames
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