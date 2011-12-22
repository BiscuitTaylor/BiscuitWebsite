\version "2.14.0"

date = #(strftime "%Y.%m.%d" (localtime (current-time)))
hour = #(strftime "%H:%M" (localtime (current-time)))
\header {
  title = "Are You Lonesome Tonight"
  composer = "Lou Handman / Roy Turk. (1926)"
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
\include "predefined-guitar-fretboards.ly"
%\include "../fretboards/biscuit-fretboards.ly"


verseChords = \chordmode 
{	
    \set predefinedDiagramTable = #custom-fretboard-table-open-e
     c | e:min | a:min | a:min |
     
              c1 | c1:7 | c1:7 | f1 | f1

                G      G            G7           G7
     Does your memory stray to a brighter sunny day
              G7             G7            C     C
     When I kissed you and called you sweetheart?
             C7              C7          F         F
     Do the chairs in your parlor seem empty and bare?
            D            D            Dm           G
     Do you gaze at your doorstep and picture me there?
             C                 Em           D           D
     Is your heart filled with pain, shall I come back again?
             Dm            G7        C    G7
     Tell me dear are you lonesome tonight.
}

chorusChords = \chordmode 
{
	 g1 | d1 | a1 | e1:min | g1  | d1  | a1  | e1:min | g2 a2 | d1 
}

bridgeChords = \chordmode 
{
	 e1:min | g2 a2 | e1:min | g2 a2 | e1:min | g2 a2 | e1:min | g2 a2 | a2
}



verseLyrics = 
<<
  \new Lyrics  \lyricsto verseVocal 
  {
          C        Em            Am         Am
     Are you lonesome tonight, do you miss me tonight?
              C        C7          F  F
     Are you sorry we drifted apart?
                G      G            G7           G7
     Does your memory stray to a brighter sunny day
              G7             G7            C     C
     When I kissed you and called you sweetheart?
             C7              C7          F         F
     Do the chairs in your parlor seem empty and bare?
            D            D            Dm           G
     Do you gaze at your doorstep and picture me there?
             C                 Em           D           D
     Is your heart filled with pain, shall I come back again?
             Dm            G7        C    G7
     Tell me dear are you lonesome tonight.
  }

  \new Lyrics \lyricsto verseVocal 
  { \set stanza = "2. "
open it up and sheÕs love -- ly love -- ly
eyes of ha -- zel green
but I close it up fast be -- cause the rain gets past
and lays a tear down on her cheek
i prom -- ised her once that i would nev -- er ev -- er
break her heart a -- gain
so lord take me there 
in a sil -- ent pray -- er
and her lock -- et in my hand
}
  \new Lyrics \lyricsto verseVocal 
  { \set stanza = "3. "
the last thing I re -- mem -- ber I was fear -- ing for my life
she was call -- ing out my name from o -- ver on the oth -- er side
I reached out to hold her
but the break was just too strong
now the si -- lence just gets cold -- er
as the ri -- ver rages on
}
>>

chorusLyrics = 
{
	\new Lyrics \lyricsto chorusVocal
	{
IÕve got a gold heart lock -- et on a sil -- ver chain
clinched tight in my fist in the pour -- ing rain
and the only road back home a -- gain
is all but washed away
IÕm going to cross that riv -- er to -- night
no mat -- ter what it takes 
al -- though I might die try -- ing
my true love will re -- main
in a gold heart lock -- et on a sil -- ver chain
	}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score
{
<<
    \new FretBoards 
	{
		
      \set stringTunings = #biscuitTuning
      \override FretBoard
        #'(fret-diagram-details string-count) = #'4
      \override FretBoard
        #'(fret-diagram-details finger-code) = #'in-dot
		{
		    \verseChords
		    %\chorusChords
			%\repeat unfold 2 
			%{
				\introChords
			%}
		}
	}
	\new ChordNames 
	{
		% if there are just a ChordName context and a Lyrics context as in a lead sheet.
		% The warning messages can be avoided by making one of the contexts behave as a staff by inserting
		 \override VerticalAxisGroup #'staff-affinity = ##f
		%\with { midiInstrument = #"acoustic guitar (nylon)" }
		{
		    \verseChords
		    %\chorusChords
			%\repeat unfold 2 %'borrow' the intro chords for the outro
			%{
				\introChords
			%}
		}	
	}
  
	%Lyrics
	\new Lyrics
	{
		
		\verseLyrics
		%\chorusLyrics
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