\version "2.14.0"

date = #(strftime "%Y.%m.%d" (localtime (current-time)))
hour = #(strftime "%H:%M" (localtime (current-time)))
\header {
  title = "After The Gold Rush"
  composer = "Robbie Robertson"
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
	%Big chord names, so old geezers can percieve them			
	\override ChordName #'font-size = #2 
	%Bold chord names, so old geezers can grok them			
	\override ChordName #'font-series = #'bold
    \set predefinedDiagramTable = #custom-fretboard-table-open-e
	a1 cis1:min  d1 a1
	a1 cis1:min  d1 a1
	a1 cis1:min  d1 a1
	a1 cis1:min  d1 a1
}

%Guitar chords for Chorus.. w/fancy bass note shit
chorusChords =  
<<
\tag #'StandardGuitarFretboard
{
	\chordmode
	{
		a2 a/gis,,2 d1
		%Take a load off, Fanny.
		a2 a/gis,,2 d1
		%Take a load for free.
		\break
		
		%\mark {\markup { \vspace #5 }
		a2 a/gis,2 d1
		%Take a load off, Fanny.
		d1 d1 d1
		%And...  you put the load right on
		\break
		
		%\mark \markup { \vspace #5 }
		a2 a/gis,2 fis2:min e2 d1 d1
		%me.
	}
}

%Simplified chords for ukulele
\tag #'BiscuitUkeFretboard
{
	\chordmode 
	{
		a2 e2 d1
		%Take a load off, Fanny.
		a2 e2 d1
		%Take a load for free.
		\break
		
		%\mark {\markup { \vspace #5 }
		a2 e2 d1
		%Take a load off, Fanny.
		d1 d1 d1
		%And...  you put the load right on
		\break
		
		%\mark \markup { \vspace #5 }
		a2 e2 fis2:min e2 d1 d1
		%me.
	}
}
>>

verseLyrics = 
<<
  \new Lyrics 
  {
	\lyricmode {
After the Goldrush : Neil Young

 Intro:
 D(addE) D G    (x2)

 G       D                            G             
 Well, I dreamed I saw the knights in armour coming,

        D                 G     
 Sayin' something about a queen.

             D                    A                 
 There where peasants singin' and drummers drummin' 

         G                A    
 And the archer split the tree.

             Bm              C         
 There was a fanfare blowin' to the sun

          G               C      
 that was floating on the breeze.

 D                     A          
 Look at Mother Nature on the run 

        C             G    
 In the nineteen seventies.

 D                     A          
 Look at Mother Nature on the run 

        C             G    
 In the nineteen seventies.

                                     
 I was lying in a burned out basement
 With a full moon in my eye
 I was hoping for replacement
 When the sun burst through the sky
 There was a band playing in my head
 And I felt like getting high
 I was thinking about what a friend had said
 I was hoping it was a lie
 Thinking about what friend had said
 I was hoping it was a lie
                            
 Horn solo (lasts one verse)

 Well I dreamed I saw the silver spaceship flying
 In the yellow haze of the sun
 There were children crying and colours flying
 All around the chosen one
 All in a dream, all in a dream
 The loading had begun
 Flying mother nature's silver seed
 To a new home in the sun
 Flying mother nature's silver seed
 To a new home


 notes:
                  
 Intro: DaddE -> D
 In other words hammer-on the first string as you hit the opening D. 
 (this from the "Decade' file by inges@??? alt.guitar.tab)	}
  }

  \new Lyrics 
  { \lyricmode
  {\set stanza = "2. "
I was lying in a burned out basement
 With a full moon in my eye
 I was hoping for replacement
 When the sun burst through the sky
 There was a band playing in my head
 And I felt like getting high
 I was thinking about what a friend had said
 I was hoping it was a lie
 Thinking about what friend had said
 I was hoping it was a lie
  }
  }
  
  \new Lyrics 
  { \lyricmode
  {\set stanza = "3. "
Horn solo (lasts one verse)
  }
  }


  \new Lyrics 
  { \lyricmode
  {\set stanza = "4. "
Well I dreamed I saw the silver spaceship flying
 In the yellow haze of the sun
 There were children crying and colours flying
 All around the chosen one
 All in a dream, all in a dream
 The loading had begun
 Flying mother nature's silver seed
 To a new home in the sun
 Flying mother nature's silver seed
 To a new home
  }
  }
  
>>

chorusLyrics = 
{
	\new Lyrics
 	\lyricmode
	{
Take_a_load_off,1 Fanny.1
Take_a_load_for1 free.1
Take_a_load_off,1 Fanny.1
And...1  _...you1 put_the_load_right_on1 me.1
	}
}


chorusMelody =
\new Voice = "chorusVocal"
{
	%TODO - add a staff for the fancy vocal harmony part here
	%"and..."
	e8 e16 e16 e8 d8 e16 e16 e16 g8. |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score
{
	%keep only sections tagged BiscuitUkeFretboard
    %\keepWithTag #'BiscuitUkeFretboard
	%ignore all sections tagged StandardGuitarFretboard
    %\removeWithTag #'StandardGuitarFretboard 
    \keepWithTag #'StandardGuitarFretboard
<<
    \new FretBoards 
	{
        \defineMyFretboard
		{
			%\transpose a g
		    \verseChords
			%\transpose a g
			\chorusChords
		}
	}

	\new ChordNames 
	{
		% \with { midiInstrument = #"acoustic guitar (nylon)" }
		{
			%\transpose a g
		    \verseChords
			%\transpose a g
			\chorusChords
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
		\bar "||" %seems to have no effect here.   I guess you can only have bar markers on a Staff
	}

	% Enable this to write the notes of each chord on a new staff below the melody staff
%	\new Staff
%	{
%		\repeat unfold 16 {\skip 1} % verse is 16 bars long
%	 	\chorusChords
%	 }
>>

  \layout { indent = 0.0\cm }
  \midi {}
} 

% ****************************************************************
% end ly snippet
% ****************************************************************