\version "2.16.1"

date = #(strftime "%Y.%m.%d" (localtime (current-time)))
hour = #(strftime "%H:%M" (localtime (current-time)))
\header {
  title = "Crazy Mary"
  composer = "Victoria Williams"
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
  between-system-space = 3.5\cm
  indent = 0\mm
  line-width = 160\mm
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
  %ragged-last-bottom = ##t
}


% ****************************************************************
% ly snippet:
% ****************************************************************
#(ly:set-option 'relative-includes #t)
% With relative-includes set, the path for each \include command will be taken relative to the file containing that command.
% This behavior is recommended and it will become the default behavior in a future version of lilypond.

\include "../fretboards/biscuit-fretboards.ly"
\include "predefined-guitar-fretboards.ly"
\include "../fretboards/biscuit-guitar-fretboards.ly"

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

introChords = \chordmode { g | g | g | g }

verseChords = \chordmode 
{	
	a''1:min | f'''1 | a''1:min | f'''1 |
	c2 g'''2 | f'''1 |
	a''2:min g'''2 | f'''1 |
}

crazyChords = \chordmode 
{	
	% f'''1 | g''2  a''2:min |
	f'''1 | f'''1 | g''1 | g''1 |  a''1:min | f'''1
}

crowdChords = \chordmode 
{	
	a''2:min g'''2 |f'''1 |
}

chorusChords = \chordmode 
{	
	a''2:min  g'''2 | f'''2 ~ f'''4. g''8 |
	a''2:min  g'''2 | f'''2 ~ f'''4. g''8 |
	a''2:min  g'''2 | f'''2 ~ f'''4. g''8 |
}

dreamChords = \chordmode 
{	
	a1 | a1 | d'''1 | d'''1 |
	a1 | a1 | e'''1:min | d'''1 |
	a1 | a1
}

ahChords = \chordmode 
{	
	a2  d'''2 | a2  d'''2 |
	a1 | a1 | g2  d'''2 | f''1 | g | a
}

skidMarksChords = \chordmode 
{	
	a''1:min | f'''1 | a''1:min | f'''1 |
	a''1:min
}

bridgeChords = \chordmode 
{	
	a''1:min | g'''1 | f'''1 |
	f'''1 | g'''1 | f'''2 ~ f'''4. g'''8 |
}

outroChords = \chordmode 
{	
	\repeat unfold 2 { \repeat unfold 4 { a''1:min | f'''1 } \break }
}


verseLyrics = 
<<
  %\new Lyrics  \lyricsto verseVocal 
  \new Lyrics    %\context Lyrics \lyricmode  \with { alignBelowContext = "melodyStaff" }
  %\lyricsto verseMelody 
  %\override LyricText #'font-size = #2	% increase font by two 'sizes'
  %\override VerticalAxisGroup #'nonstaff-nonstaff-spacing = #'((basic-distance . 30))
  {
	\lyricmode {
	"She lived on a curve in the road"1
	"In an old tar paper shack."1
	"On the south side of town;"1
	"wrong side of the tracks."1
	"Sometimes on the"2 "way into town We'd say,"2
	"Mama can we stop and give her a ride?"1
	"Sometimes we"2 "did, but she shook her head and her"2
	"hands flew from her side."1
	
	\break
	% alternate endings
	\skip 1 "Wild eyed"1
	\skip 1 "Crazy"1 "Mary."1 \skip 1	
	\repeat unfold 2 { \skip 1 }	% skip following ending
  }
  }

  \new Lyrics 
  { \lyricmode
  {\set stanza = "2. "
	"Down a long dirt road"1
	"Past the parson's place."1
	"Their old blue car"1
	"We used to race."1
	"Little"2 "country store with a"2
	"sign tacked to the side - said No"1
	"L-O-I-T-E-R-I-N-G A-"1 
	"llowed."1
	
	\break
	% alternate endings
	\repeat unfold 6 { \skip 1 }	% skip previous ending
	"Underneath that"2 "sign always congregated"2	
	"quite a crowd."1 
  }
  }
  
>>	

dreamLyrics =
  \new Lyrics 
  { \lyricmode
  {
	"One night thunder cracked"1
	"Mercy backed outside my windowsill."1
	"Dreamed I was flying high"1
	"Above the trees; over the hills."1
	"Looked down into the house of"1
	"Mary."1
	"Bare bulb hung there,"1
	"Newspaper covered walls."1
	
	"And Mary rising up"1
	"above it all."1
  }
  }
  
ahLyrics = 
<<
  \new Lyrics  \with {
    \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 2))
	% Note - this override only makes a difference when Fret Diagrams are present!
  }
  %\lyricsto vocalHarmony 
  {
  \lyricmode {
	"Ah... Ah..."1
	"Ah..."1
	\repeat unfold 6 { \skip 1 }	
		  }
  }
>>


skidMarksLyrics = 
<<
  %\new Lyrics  \lyricsto verseVocal 
  \new Lyrics    %\context Lyrics \lyricmode  \with { alignBelowContext = "melodyStaff" }
  \new Lyrics 
  { \lyricmode
  {
	"Next morning on the way into town"1
	"We saw some skid marks and followed them around."1
	"Over the curb; Through the field;"1
	"Into the house of"1 
	"Mary."1
  }
  }
  
>>	

chorusLyrics = 
<<
  \new Lyrics  \with {
    \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 2))
	% Note - this override only makes a difference when Fret Diagrams are present!
  }
  %\lyricsto vocalHarmony 
  {
  \lyricmode {
	"Take a bottle"2 "drink it down."2
	"Pass it around."1
	"Take a bottle"2 "drink it down."2
	"Pass it... Pass it around. Pass ita..."1
	"Take a bottle"2 "drink it down."2 
	"Pass it... Pass it a... Pass it around."1
	}
  }
>>
  

bridgeLyrics = 
<<
  \new Lyrics  \with {
    \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 2))
	% Note - this override only makes a difference when Fret Diagrams are present!
  }
  %\lyricsto vocalHarmony 
  {
  \lyricmode {
	"That what you"1 "fear the most, could meet you"1 "halfway,"1
	"That what you"1 "fear the most, could meet you"1 "halfway,"1
	  }
  }
>>

outroLyrics = 
<<
  \new Lyrics  \with {
    \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 2))
	% Note - this override only makes a difference when Fret Diagrams are present!
  }
  %\lyricsto vocalHarmony 
  {
  \lyricmode {
	"Oh, pass it a... Pass it around. Pass it a... Pass it a... Passit a..."1
	"Oh yeah."1
	  }
  }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score
{
	%keep only sections tagged BiscuitUkeFretboard
    \keepWithTag #'BiscuitUkeFretboard
<<
    \new FretBoards 
	{
        \defineMyFretboard
		{
			    \repeat volta 2
			    {
			    	\verseChords
			    }
			    \alternative {
								{ \crazyChords }
								{ \crowdChords }
							 }
		    	\chorusChords
				\dreamChords
				\ahChords
			    \skidMarksChords
				\bridgeChords
		    	\chorusChords

				\break
				\outroChords
		    }
	}

	\new ChordNames 
%	  \with {
%	  \override BarLine #'bar-size = #4
%	  \consists "Bar_engraver"
%	  }
%	  \with {
%	    \override VerticalAxisGroup #'padding = #'(-10.2 . 20)
%	  }
	{
		%Big, bold chord names, so old geezers can see them			
		\override ChordName #'font-size = #2 
		\override ChordName #'font-series = #'bold

		%\with { midiInstrument = #"acoustic guitar (nylon)" }
		{
	    	%\introChords
		    \repeat volta 2
		    {
		    	\verseChords
		    }
		    \alternative {
							{ \crazyChords }
							{ \crowdChords }
						 }
		    \chorusChords
			\dreamChords
			\ahChords
			\skidMarksChords
			\bridgeChords
			\chorusChords
			
			\break
			\outroChords
		}	
	}
  
	%Lyrics
	{
		%\introLyrics
		<<
	    %{
	    %	\verseLyrics
	    %}
	    \verseLyrics
%		\alternative {
%			{ \crazyLyrics }
%			{ \crowdLyrics }
%			{ \risingUpLyrics }
%		}
		
		>>
		
		\pageBreak
%		\new Staff
%		\with {
%    		\override VerticalAxisGroup #'staff-nonstaff-spacing = #'((basic-distance . 10))
%  		}
		<<
		%\chorusHarmony
		\chorusLyrics
		>>
		\dreamLyrics
		\ahLyrics
		\pageBreak
		\skidMarksLyrics
		\break
		\bridgeLyrics
		\chorusLyrics
	}

	% Enable this to write the notes of each chord on a new staff below the melody staff
%	\new staff
%	{
%	    \repeat volta 4
%	    {
%	    	\verseChords
%	    }
%	    \alternative {
%						{ \crazyChords }
%						{ r1 |r1 }
%					 }				 
%	}
%	\new Staff \chorusChords
%	\new Staff \bridgeChords
>>

  \layout {
  	indent = 0.0\cm  	
  	
%  		\context {
%	    \ChordNames
%	    \consists Bar_engraver
%	    %% need procedure, since ChordNames doesn't have a staff_sym engraver.
%	    \override BarLine #'bar-size-procedure = #(lambda (x) 3.0)
%		}
%  	
%  		\context {
%	    \Lyrics
%	    \consists Bar_engraver
%	    %% need procedure, since Lyrics doesn't have a staff_sym engraver.
%	    \override BarLine #'bar-size-procedure = #(lambda (x) 3.0)
%		}
  	
  }
  %\midi {}
} 

% ****************************************************************
% end ly snippet
% ****************************************************************