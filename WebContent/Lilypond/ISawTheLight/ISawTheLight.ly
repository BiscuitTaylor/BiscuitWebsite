\version "2.16.2"

date = #(strftime "%Y.%m.%d" (localtime (current-time)))
hour = #(strftime "%H:%M" (localtime (current-time)))
\header {
  title = "I Saw The Light"
  composer = "Todd Rundgren"
  
  tagline = \markup 
  {
  	"Transcribed by Biscuit on: " \date "at " \hour 
  	"; engraved with LilyPond" $(lilypond-version)
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

%TODO: exclude staff from color-change
#(define (override-color-for-all-grobs color)
  (lambda (context)
   (let loop ((x all-grob-descriptions))
    (if (not (null? x))
     (let ((grob-name (caar x)))
      (ly:context-pushpop-property context grob-name 'color color)
      (loop (cdr x)))))))

color_grey = {
	\override NoteHead #'color = #grey
	\override Dots #'color = #grey
	\override Accidental #'color = #grey
	\override Stem #'color = #grey
	\override Beam #'color = #grey
	\override ChordName #'color = #grey 
	
	%doesn't really belong
	\override ChordName #'font-series = #'regular
}

color_black = {
	\override NoteHead #'color = #black
	\override Dots #'color = #black
	\override Accidental #'color = #black
	\override Stem #'color = #black
	\override Beam #'color = #black
	\override ChordName #'color = #black 
	
	%doesn't really belong
	\override ChordName #'font-series = #'bold
}

% ****************************************************************
% Fingerboard diagrams:
% ****************************************************************
% If using standard predefined fretboards,
% (see \keepWithTag at the start of the \score section)
% you can comment-out the biscuit-fretboards include. 
\include "../fretboards/lowg-fretboards.ly"
\include "predefined-ukulele-fretboards.ly"

defineMyFretboard =
<<
\tag #'StandardUkeFretboard
{
  \makeDefaultStringTuning #'ukulele-tuning \stringTuning<g c' e' a'>  
}

\tag #'LowGUkeFretboard
{
  %define fretboard diagrams for c6 tenor ukulele (low-g)
  \lowGCustomFretboards
}

>>

lowGCustomFretboards =
{
  \set stringTunings = #lowGUkeTuning
}

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

% instead of using chordmode, explicitly specify each note in the chord.
% This way, we can get whatever inversion/chordshape we want.
verseChords =
{	
	\color_grey
    \partial 4. <c' e' g' c''>4.
	\color_black
    
	%d1:min7 		g1              d1:min7          g1
    <c' f' a' d''>1 <b d' g' b'>1	<c' f' a' d''>1  <b d' g' b'>1 \break
	%d1:min7          g1               c1:maj7        e1:min
	<c' f' a' d''>1  <b d' g' b'>1   <c' e' g' b'>1  <g e' g' b'>2\segno <b e' g' b'>2 \break
	
	
	%d1:min7 		g1              d1:min7          g1
    <c' f' a' d''>1 <b d' g' b'>1	<c' f' a' d''>1  <b d' g' b'>1 \break
	%d1:min7          g1               c1:maj7        c1:7
	<c' f' a' d''>1  <b d' g' b'>1   <c' e' g' b'>1  \partial 2. <bes e' g' c''>2. \mark "Fine" \bar ""
}
verseFretboardChords =
{	
	%Same as verseChords, except for color trick
	\applyContext #(override-color-for-all-grobs (x11-color 'grey))
    \partial 4. <c' e' g' c''>4.
	\applyContext #(override-color-for-all-grobs (x11-color 'black))
    
	%d1:min7 		g1              d1:min7          g1
    <c' f' a' d''>1 <b d' g' b'>1	<c' f' a' d''>1  <b d' g' b'>1 \break
	%d1:min7          g1               c1:maj7        e1:min
	<c' f' a' d''>1  <b d' g' b'>1   <c' e' g' b'>1  <g e' g' b'>2 <b e' g' b'>2 
	\break
	
	
	%d1:min7 		g1              d1:min7          g1
    <c' f' a' d''>1 <b d' g' b'>1	<c' f' a' d''>1  <b d' g' b'>1 \break
	%d1:min7          g1               c1:maj7        c1:7
	<c' f' a' d''>1  <b d' g' b'>1   <c' e' g' b'>1  \partial 2. <bes e' g' c''>2. \bar ""
}
verseChordNames = \chordmode
{	
	\bigChordNames
	\color_grey
    \partial 4. c4.
	\color_black
    
	d1:min7 		g1              d1:min7          g1
	d1:min7          g1               c1:maj7        e1:min
	d1:min7 		g1              d1:min7          g1
	d1:min7          g1               c1:maj7        \partial 2. c2.:7 \bar ""
}


bridgeChords =
{	
	\color_grey
    \partial 4. <c' e' g' c''>4.
	\color_black
    
	%f       		 g1             f1                g1
    <f' a' c'' f''>1 <b d' g' b'>1	<f' a' c'' f''>1  <b d' g' b'>1 \break
	%f1              g1              f1                e1:min
	<f' a' c'' f''>1 <b d' g' b'>1   <f' a' c'' f''>1  <g e' g' b'>2 <b e' g' b'>2  \break
	
	
	%d1:min7 		g1              d1:min7          g1
    <c' f' a' d''>1 <b d' g' b'>1	<c' f' a' d''>1  <b d' g' b'>1 \break
	%d1:min7          g1               c1:maj7        c1:7
	<c' f' a' d''>1  <b d' g' b'>1   <c' e' g' b'>1  \partial 2. <bes e' g' c''>2. \mark "D.S. al Fine"\bar ""
}
bridgeChordNames = \chordmode
{	
	\bigChordNames
	\color_grey
    \partial 4. c4.
	\color_black
    
	f1       		 g1             f1                g1
	f1              g1              f1               
	 e1:min
	d1:min7 		g1              d1:min7           g1
	d1:min7         g1              c1:maj7           c1:7
}


chorusChords = 
{	
	\partial 4
	%c:7
%	\applyContext #(override-color-for-all-grobs (x11-color 'grey))
	\color_grey
	<bes e' g' c''>4
	\color_black
%	\applyContext #(override-color-for-all-grobs (x11-color 'black))
	
  \repeat volta 3
  {
	%f:maj7          e:min7           a:min             d:7
	<c' f' a' e''>1  <d' g' b' e''>1  <e' a' c'' e''>1  <c' fis' a' d''>1 \break

	%d1:min7         g1               c1:maj7          e1:min         
	<c' f' a' d''>1  <b d' g' b'>1   <c' e' g' b'>1    <b e' g' b'>1  \break
  }
 
  \alternative
  {
 	{
	    %d:min7            g1            c1:maj7 	       c
		<c' f' a' d''>1   <b d' g' b'>1  <c' e' g' b'>1   <c' e' g' c''>1
	}
 	{
	    %c1:maj7 	     e1:min  		c1:maj7          c1:5            c1:maj7          c1:5
		<c' e' g' b'>1   <b e' g' b'>1  <c' e' g' b'>1   <g c' g' c''>1  <c' e' g' b'>1   <c' c' g' c''>1 
	}
  }
}
chorusFretboardChords = 
{	
	%Same as chorusChords, except for color trick
	%c:7
	\applyContext #(override-color-for-all-grobs (x11-color 'grey))
%	\color_grey
	\partial 4 <bes e' g' c''>4
%	\color_black
	\applyContext #(override-color-for-all-grobs (x11-color 'black))
	
  \repeat volta 3
  {
	%f:maj7          e:min7           a:min             d:7
	<c' f' a' e''>1  <d' g' b' e''>1  <e' a' c'' e''>1  <c' fis' a' d''>1

	%d1:min7         g1               c1:maj7          e1:min         
	<c' f' a' d''>1  <b d' g' b'>1   <c' e' g' b'>1    <b e' g' b'>1  
  }
  \alternative 
  {
 	{
	    %d:min7            g1            c1:maj7 	       c
		<c' f' a' d''>1   <b d' g' b'>1  <c' e' g' b'>1   <c' e' g' c''>1
	}
 	{
	    %c1:maj7 	     e1:min  		c1:maj7          c1:5            c1:maj7          c1:5
		<c' e' g' b'>1   <b e' g' b'>1  <c' e' g' b'>1   <g c' g' c''>1  <c' e' g' b'>1   <c' c' g' c''>1 
	}
  }
}
chorusChordNames = \chordmode 
{	
	\bigChordNames
	%\applyContext #(override-color-for-all-grobs (x11-color 'grey))
	\color_grey
	\partial 4 	c4:7 |
	\color_black
	%\applyContext #(override-color-for-all-grobs (x11-color 'black))

  \repeat volta 3
  {
	f1:maj7 e1:min7  a1:min  d1:7
	d1:min7 g1       c1:maj7 e1:min
  }
    \alternative 
  {
 	{
		d:min7   g1      c1:maj7  c1
	}
 	{
	    c1:maj7  e1:min  c1:maj7  c1:1.5   c1:maj7   c1:1.5
	}
  }
}

verseIntroChords = \chordmode 
{	
	\bigChordNames
    \partial 4. g4. |
}


verseLyrics = 
<<
  \new Lyrics 
  {
	\lyricmode {
  \partial 4. "It was"4.
  "late last"1 "night - I was"1
  "feeling something wasn't"1 "right; There was"1 
  "not another soul in"1 "sight, Only"1 
  "you"1

  " "2 "So we"2
  
  "walked a-"1 "long, Though I"1 
  "knew that there was something"1 "wrong, Then a"1
  "feeling hit me, so"1 "strong   About"1 
  you1
  }
  }
  
  \new Lyrics 
  { \lyricmode
  {\set stanza = "2. "
  \partial 4. "Though we"4.
  "had   our"1 "fling,   I just"1
  "never did suspect a"1 "thing ... Till that"1 
  "little bell began to"1 "ring - In my"1
  head1

  " "2
   "And I"2
   
  "tried to"1 "run,  but it"1 
  "didn't seem to help me"1 "none,  cause I"1
  "couldn't have loved no"1 "one -  or so I"1 
  "said"1
  }
  }
  
  \new Lyrics 
  { \lyricmode
  {\set stanza = "3. "
  \partial 4. \skip4.
  \repeat unfold 7 {\skip1}
%  \repeat unfold 7 {"Doo da-duh doo"1}
  
  " "2 "Baby I"2
  
  "love you"1 "best;   that's not"1
  "something that I say in"1 "jest ... you're"1 
  "different from all the "1 "rest - In my"1
  eyes1 \skip1


  }
  }
  
>> 

bridgeLyrics = 
<<
  
  \new Lyrics 
  { \lyricmode
  {
  \partial 4. \skip4.
  \repeat unfold 16 {"Doo da-duh doo"1}
  
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
%" "2
 "Then you "2
"gazed up at"1 "me ... And the"1
"answer was plain to"1 "see, Cause I"1 \break
"saw the"1 "light  -  In your"1
"eyes"1  " "2. "I"4 "saw the"1 "light In your "1 "eyes"1 "."1        

  }
  }
  
  \new Lyrics 
  { \lyricmode
  {\set stanza = "2. "
%" "2 
"But my"2
"feelings for"1 "you Were just"1
"something I never"1 "knew Til I"1
"saw the"1 "light  -  In your"1
"eyes..."1 " "2. "Til I"4 "saw the"1 "light In your"1  "eyes"1  "."1      
  }
  }

  \new Lyrics 
  { \lyricmode
  {\set stanza = "3. "
%" "2
 "And I"2
"ran out"1 "before, But I"1
"won't do it any"1 "more  -  Can't you"1 
"see...  the"1 "light In my"1 "eyes  "1 " "2.  "in my"4 "eyes"1 " in my"1 "eyes"1
  }
  }

>> 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\markup { \left-align { \line { Tenor Ukulele (low-g) } } }
  
\score
{
    \keepWithTag #'LowGUkeFretboard
	%keep only sections tagged BiscuitUkeFretboard

<<
    \new FretBoards 
	{
        \defineMyFretboard
		{
			\transpose g b
		    \verseFretboardChords
		}
	}

	\new ChordNames
	{
		% \with { midiInstrument = #"acoustic guitar (nylon)" }
		{
			\transpose g b
		    \verseChordNames
		}	
	}
  
	\new Staff \with {instrumentName = #"Uke"}
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
<<
    \new FretBoards 
	{
        \defineMyFretboard
		{
			\transpose g b		% Todd wrote it in C.  Lori Carson did it in E.
		    \chorusFretboardChords
		    %\chorusChordNames	% Compute the default fretboard diagrams for the chord names
		}
	}

	\new ChordNames 
	{
		\transpose g b
	    \chorusChordNames
	}
  
	% Enable this to write the notes of each chord on a new staff below the melody staff
	\new Staff
	{
		    \chorusChords
		    %\chorusChordNames	% Compute the default notes for the chord names
	 }
	%Lyrics
	\new Lyrics 
	{
		\chorusLyrics
	}
>>

  \layout { indent = 0.0\cm }
} 

\pageBreak
\score
{
<<
    \new FretBoards 
	{
        \defineMyFretboard
		{
			\transpose g b		% Todd wrote it in C.  Lori Carson did it in E.
		    \bridgeChords
		}
	}

	\new ChordNames 
	{
		\transpose g b
	    \bridgeChordNames
	}
  
	% Enable this to write the notes of each chord on a new staff below the melody staff
	\new Staff
	{
		    \bridgeChords
		    %\chorusChordNames	% Compute the default notes for the chord names
	 }
	%Lyrics
	\new Lyrics 
	{
		\bridgeLyrics
	}
>>

  \layout { indent = 0.0\cm }
}


% ****************************************************************
% end ly snippet
% ****************************************************************