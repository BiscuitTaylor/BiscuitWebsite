\version "2.14.0"

date = #(strftime "%Y.%m.%d" (localtime (current-time)))
hour = #(strftime "%H:%M" (localtime (current-time)))
\header {
  title = "Red Clay Halo"
  composer = "Gillian Welch"
  tagline = \markup 
  {
  	"Transcribed by Biscuit on: " \date "at " \hour 
  	"; engraved with LilyPond" #(ly:export (lilypond-version))
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
	%Big, bold chord names, so old geezers can see them			
	\override ChordName #'font-size = #2 
	\override ChordName #'font-series = #'bold

	%\set Staff.midiInstrument = #"acoustic guitar (nylon)"
	g1 |
	g1 | g1 | g1 | d1 |
	g1 | g1 | g2 d2 | g1
}

chorusChords = \chordmode 
{	
	%Big, bold chord names, so old geezers can see them			
	\override ChordName #'font-size = #2 
	\override ChordName #'font-series = #'bold

	c1 | g1 | d1 | g1 |
	c1 | g1 | d1 | g1
}

% Note - vocalHarmony part is written in the Key of C.
% Prolly should write it in G, and transpose it to C!
chorusHarmony =
\new Voice = "vocalHarmony"
{
  f''4 c''4 a'4 c''4 | e''4 c''4 g'4 c''8. c''16 | \break
  f''4 f''4 g''4 c''4 | e''2. e''8. e''16 | \break
  f''4 f''4 g''4 g''4 | g''4 e''4 c''4 c''8. c''16 | g''4 g''4 d''8 d''8 b'8 g''8 | c''1 | 
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
	"All the"1 "girls all dance with the"1 "boys from the city, and they"1
	"don't care to dance with"1 "me. Now it"1
	"ain't my fault that the"1 "fields are muddy, and the"1
	"red clay"2 "stains my"2 feet.1
  }
  }

  \new Lyrics 
  { \lyricmode
  {\set stanza = "2. "
	"And it's"1 "under my nails and it's"1 "under my collar, and it"1 "shows on my Sunday"1 "clothes. Though I"1
	"do my best with the"1 "soap and the water, but the"1 "darned old"2 "dirt won't"2 go.1
  }
  }
  
  \new Lyrics 
  { \lyricmode
  {\set stanza = "3. "
	"Now it's" "mud in the spring and it's" "dust in the summer, When it" "blows in a crimson" "tide. Until"
	"trees and leaves and the" "cows are the colour, of the"
	 "dirt on the"2 "mountain"2 "side."1
  }
  }
  
  \new Lyrics 
  { \lyricmode
  {\set stanza = "4. "
	"Now" "Jordan's banks they're" "red and muddy, and the"
	"rolling water is" "wide. but I" "got no boat, so I'll" "be good and muddy, when I"
	"get to the"2 "other"2 "side."
  }
  }
>>

chorusLyrics = 
<<
  \new Lyrics  \with {
    \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #'((basic-distance . 2))
	% Note - this override only makes a difference when Fret Diagrams are present!
  }
  \lyricsto vocalHarmony 
  {
  \lyricmode {
	when4 I4 pass4 "through the"4 pearl4-y4 gate,4 will8. my16
	gown4 be4 gold4 in4 stead?2.  "Or just"8. a16
	red4 clay4 robe4 with4 red4 clay4 wings,4 and8. a16 
	red4 clay4 ha8-lo8 for8 my8 head1	  }
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
			\transpose g c
		    \verseChords
			\transpose g c
		    \chorusChords
		}
	}

	\new ChordNames 
%	  \with {
%	    \override VerticalAxisGroup #'padding = #'(-10.2 . 20)
%	  }
	{
		%\with { midiInstrument = #"acoustic guitar (nylon)" }
		{
	    	%\introChords
			\transpose g c
		    \verseChords
			\transpose g c
		    \chorusChords
		}	
	}
  
	%Lyrics
	{
		%\introLyrics
		\verseLyrics
		%\pageBreak
		\break
%		\new Staff
%		\with {
%    		\override VerticalAxisGroup #'staff-nonstaff-spacing = #'((basic-distance . 10))
%  		}
		<<
		\chorusHarmony
		\chorusLyrics
		>>
	}

	% Enable this to write the notes of each chord on a new staff below the melody staff
	%\new Staff \chorusChords
>>

  \layout {
  	indent = 0.0\cm  	
  }
  \midi {}
} 

% ****************************************************************
% end ly snippet
% ****************************************************************