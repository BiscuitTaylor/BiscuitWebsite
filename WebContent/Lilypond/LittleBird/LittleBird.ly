\version "2.14.0"

date = #(strftime "%Y.%m.%d" (localtime (current-time)))
hour = #(strftime "%H:%M" (localtime (current-time)))
\header {
  title = "Little Bird"
  composer = "Lori Carson / Martine / McFadden / Pimsler"
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
\include "../fretboards/biscuit-fretboards.ly"

introChords = \chordmode { a2:min7 | f2 | a2:min7 | f2| a2:min7 | f2 }

verseChords = \chordmode 
{	
	%\set Staff.midiInstrument = #"acoustic guitar (nylon)"
	d2:min | d2:min/e | d2:min/f | f2:maj7  | bes2 | bes2 | r2 | r2 
	f2 | f2 | a2:min | a2:min  | d2:min | d2:min | r2 | r2 
	d2:min | d2:min/e | d2:min/f | f2:maj7  | bes2 | bes2 
	g2 | a2:min | f2 | c2  | f2 | a2:min | r2 | r2
}

chorusChords = \chordmode 
{
	d2:min | f2:maj7 | g2:7 | e2:min7 | d2:min
	f2 | f2 | g2 | g2 |
	d2:min | f2:maj7 | g2:7 | e2:min7 | d2:min
	f2 | f2 | g2 | g2 |
}

introMelody =
\new Voice = "introGuitarArpeggios"
{
	\relative c''
	{
		d4. d8 | d4 e4 | e4. e8
		d4. d8 | d4 e4 | e4 e4
	}
}

verseMelody =
\new Voice = "verseVocal"
{
  d4 d4 | e4 e8  f8 ~ | f4 f4 | e4 e8 f8 ~ | f2 | r2 | r2 | r4 d8 f8 | \break
  f8 c8 ~ c8 c8 ~ | c4 c8 a8 ~ | a4 bes4 | a8  g8 ~  g4 | <<f2 a2>> | r2 | r2 | r2 | \break
  d4 d4 | e4 e4 | f4 f8 e8 ~ | e4 e4 | f4 d4 | r4. c8 | \break
  f4 g4 | f4  e8 f8 ~ | f8 e8 c4 ~ | c2 | \break
  des4 des4  | e4 e8 f8 ~ | f8 e8 d4 ~ | d4 r4 | r2 | r2 | \break
}

chorusMelody =
\new Voice = "chorusVocal"
{
  d8 d4. | e4 e8  f8 ~ | f4 f8 f8 | e4 e4 | f4 d4 | r4. c8 \break
  f4 f8 f8 ~ | f8 e8 ~ e8 f8 ~ | f8 e8 c4 |r4. c8 | \break
  des4 des4 | e4 e8 e8 ~ | e8 f8 d4 ~ | d2 | r2 | r4. c8 | \break
  d4 d4 | e4 e8  f8 ~ | f4 f8 e8 ~ | e4. e8 | f8 d8 ~ d4 ~ | d4 d4 | d2 | r4. c8 \break
  d8 c8 ~ c8 a8 ~| a4 a4 | des8 a8 ~ a8  a8 | a4 g8 a8 ~ | a2 |r2 | \break
}


verseLyrics = 
<<
  \new Lyrics  \lyricsto verseVocal 
  {
  If you lie be -- side me in the dark 
  I can prom -- ise you a sky filled up with stars
  Love will fill you in the plac -- es emp -- ty
  I'm wait -- ing for your name in lights
  wait -- ing for your name in lights
  }

%  \new Lyrics \lyricsto verseVocal 
%  { \set stanza = "2. "
%  }
>>

chorusLyrics = 
{
	\new Lyrics \lyricsto chorusVocal
	{
		"Come on o" -- ver here lit -- tle bird I'll show you
		The on -- ly thing worth dream -- ing for
		has al -- ways been right at your door.
		And I won't tell you you're a fool for wish -- ing these things,
		but lit -- tle birds don't ne -- ed to wish for wings
	}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score
{
<<
    %\new TabStaff
	%{
		\set TabStaff.stringTunings =   #biscuitTuning
	 	\introChords 
		\verseMelody
		\chorusMelody
	%}
    \new FretBoards 
	{
		{
			%\introChords
		    \verseChords
		    \chorusChords
		}
	}
	\new ChordNames 
	{
		{
	    	%\introChords
		    \verseChords
		    \chorusChords
		}	
	}

	\new Voice = "vocal"
	{
		\tempo "Allegro moderato " 4 = 120
		
		\relative c''
		{
			\numericTimeSignature
			\time 2/4
	  		%\introMelody
			%\repeat volta 2 
			{
				\key c \major	
			    %\set Staff.midiInstrument = #"ocarina"
				\set Staff.midiInstrument = #"flute"
				{
				    \verseMelody
				  	\bar "||"
					\chorusMelody
				}
			}
		}
	}
  
	%Lyrics
	{
		%\introLyrics
		\verseLyrics
		\chorusLyrics
	}

	% Enable this to write the notes of each chord on a new staff below the melody staff
	% (Also allows for using a separate midi instrument for the chords)
	\new Staff 	
	{
				%\set Staff.midiInstrument = #"acoustic guitar (nylon)"
				\set Staff.midiInstrument = #"drawbar organ"
				
		{
	    	%\introChords
		    \verseChords
		    \chorusChords
		}	
	}

>>

  \layout { indent = 0.0\cm }
  \midi {}
} 

% ****************************************************************
% end ly snippet
% ****************************************************************