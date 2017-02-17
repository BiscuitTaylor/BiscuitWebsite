\version "2.16.1"

date = #(strftime "%Y.%m.%d" (localtime (current-time)))
hour = #(strftime "%H:%M" (localtime (current-time)))
\header {
  title = "Milagre"
  composer = "Neil Young"
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
  g''''1     d'1    g''''1            
  d'1     g''''1    d'1  
  a'''''1     g''''1    a'''''1    
  b''''''1:min c'1    g''''1     c'1      
  d'1     a'''''1    c'1     g''''1    
  d'1     a'''''1    c'1     g'''''1    
}

verseAlternateChords = \chordmode 
{	
	%Super-Big chord names, because we have room			
	\override ChordName #'font-size = #4 
	%Bold chord names, so old geezers can grok them			
	\override ChordName #'font-series = #'bold
    %\set predefinedDiagramTable = #custom-fretboard-table-open-e
    \set predefinedDiagramTable = #default-fret-table
  g1     d   g1            
  d1     g1    d1  
  a1     g1    a1    
  b1:min c,,,,1    g1     c''''1      
  d1     a1    c''''1     g1    
  d1     a1    c'''''1     g''''''''''''1    
}

verseNominalChords = \chordmode 
{	
	%Super-Big chord names, because we have room			
	\override ChordName #'font-size = #4 
	%Bold chord names, so old geezers can grok them			
	\override ChordName #'font-series = #'bold
    %\set predefinedDiagramTable = #custom-fretboard-table-open-e
    \set predefinedDiagramTable = #default-fret-table
  g1     d   g1            
  d1     g1    d1  
  a1     g1    a1    
  b1:min c1    g1     c1      
  d1     a1    c1     g1    
  d1     a1    c1     g1    
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
F6 Fdim F6 E7 F6 
Maurino, Dad‡ e Zeca, ™, Embarcaram de manh‹
D7/-9 Gm7 C7/-9 F6 D7/-9 Gm7 C7/-9 F6
Era quarta-feira santa, Dia de pescar e de pescador, Quarta-feirasanta, Dia de pesca- dor 
F6 Fdim F6 E7 F6 
Maurino, Dad‡ e Zeca, ™, Embarcaram de manh‹
D7/-9 Gm9 C7/+5 F6 D7/-9 Gm7 C7/-9 F6
Era quarta-feira santa, Dia de pescar e de pescador, Quarta-feirasanta, Dia de pesca- dor 
F6 E7/6 E7/+5 E7 A7/6 A7/+5
Maurino, Dad‡ e Zeca, ™, Embarcaram de manh‹
D7/-9 Gm9 C7/+5 F6 D7/-9 Gm7 C7/-9 F6
Era quarta-feira santa, Dia de pescar e de pescador, Quarta-feirasanta, Dia de pesca- dor 
G#7/6 Dbmaj9 G#13/-9 Dbmaj7/6 Dmaj7 Ebm7/Bb
Se sabe que muda o tempo, Sabe que o tempo vira, A’ o tempo virou
G#7 Ebm7/Bb G#7 Ebm7/Bb G#7 Db6/9 C7
Maurino que Ž de guentar, guentou, Dad‡ que Ž de labutar,labutou, Zeca esse nem falou 
Fmaj7 F#dim Gm7 C7/-9 Fmaj7
Era s— jogar a rede e puxar, a rede, 
F#dim Gm7 C7/-9 Am7 D7/-9 Gm9 C7/-9   }
  }

  \new Lyrics 
  { \lyricmode
  {\set stanza = "2. "
  "I was" "lying in a burned out" "basement, with a"
  "full moon in my" "eye.  I was" "hoping for re-" 
  "placement - when the" "sun burst through the" "sky. There was a " 
  "band playing" "in my head, and I" "felt like getting" "high I was"
  "thinking about what a" "friend had said; I was" "hoping it was a" lie
  "Thinking about what a" "friend had said; I was" "hoping it was a" lie
  }
  }
  
%  \new Lyrics 
%  { \lyricmode
%  {\set stanza = "3. "
% Horn solo (lasts one verse)
%  }
%  }
%
%
  \new Lyrics 
  { \lyricmode
  {\set stanza = "4. "
 "Well I" "dreamed I saw the silver" "spaceship flying, in the"
 "yellow haze of the" "sun. There were" "children crying and"
 "colours flying all a-" "round the chosen" "ones.  All in a"
 "dream, all" "in a dream; the" "loading had be-" gun
 "Flying mother nature's" "silver seed to a" "new home in the" sun
 "Flying mother nature's" "silver seed to a" "new home"
  }
  }
>> 

verseAlternateChordLyrics = 
  \new Lyrics 
  { \lyricmode
  % Same as verse4 lyrics.  Just an extra copy, for a bonus page.
  {\set stanza = "4. "
 "Well I" "dreamed I saw the silver" "spaceship flying, in the"
 "yellow haze of the" "sun. There were" "children crying and"
 "colours flying all a-" "round the chosen" "ones.  All in a"
 "dream, all" "in a dream; the" "loading had be-" gun
 "Flying mother nature's" "silver seed to a" "new home in the" sun
 "Flying mother nature's" "silver seed to a" "new home"
  }
  }
  




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score
{
	%keep only sections tagged BiscuitUkeFretboard
    \keepWithTag #'BiscuitUkeFretboard
	%ignore all sections tagged StandardGuitarFretboard
    %\removeWithTag #'StandardGuitarFretboard 
<<
    \new FretBoards 
	{
        \defineMyFretboard
		{
		    \verseChords
		}
	}

	\new ChordNames 
	{
		% \with { midiInstrument = #"acoustic guitar (nylon)" }
		{
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
	%keep only sections tagged BiscuitUkeFretboard
    \keepWithTag #'BiscuitUkeFretboard
	%ignore all sections tagged StandardGuitarFretboard
    %\removeWithTag #'StandardGuitarFretboard 
<<
    \new FretBoards 
	{
        \defineMyFretboard
		{
		    \verseAlternateChords
		}
	}

	\new ChordNames 
	{
		% \with { midiInstrument = #"acoustic guitar (nylon)" }
		{
		    \verseAlternateChords
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