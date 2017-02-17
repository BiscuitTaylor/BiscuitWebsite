\version "2.16.1"

date = #(strftime "%Y.%m.%d" (localtime (current-time)))
hour = #(strftime "%H:%M" (localtime (current-time)))
\header {
  title = "My Favorite Things"
  composer = "Rodgers & Hammerstein"
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
}


% ****************************************************************
% ly snippet:
% ****************************************************************
\include "predefined-guitar-fretboards.ly"
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

introChords = \chordmode { a2:min7 | f2 | a2:min7 | f2| a2:min7 | f2 }

(3/4 time & one sharp)
[Em7] [Em7] [Em7] [Em7] [Cmaj7] [Cmaj7] [Cmaj7] [Cmaj7] [Am7] [D9] [Gmaj7] [Cmaj7] [Gmaj7] [Cmaj7] [F#m7b5] [B7]
 return to top; 2nd time through go to 
 [Emaj7][Emaj7] [Emaj7] [Emaj7] [Emaj7] [Emaj7] [Amaj7][Amaj7] [Amaj7] [Amaj7] [Am7] [D9] [Gmaj7] [Cmaj7] [Gmaj7] [Cmaj7][F#m7b5] [B7b9] [Em7] [C#m7b5] [F#m7b5] [B7] [Em7] [Em7/D] [Cmaj7] [Cmaj7] [Cmaj7] [Cmaj7] [A7] [A7] [Gmaj7] [Cmaj7] [Am7] [D7] [G6] [Cmaj7] [G6] [G6]


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
Em
Raindrops on roses and whiskers on kittens
C
Bright copper kettles and warm woolen mittens
Am          D7       G            C
Brown paper packages tied up with strings
G           C         F#m      B7
These are a few of my favorite things


  }

  \new Lyrics \lyricsto verseVocal 
  { \set stanza = "2. "
	Cream colored ponies and crisp apple streudels
	Doorbells and sleigh bells and schnitzel with noodles
	Wild geese that fly with the moon on their wings
	These are a few of my favorite things
  }
  
  \new Lyrics \lyricsto verseVocal 
  { \set stanza = "2. "
	Girls in white dresses with blue satin sashes
	Snowflakes that stay on my nose and eyelashes
	Silver white winters that melt into springs
	These are a few of my favorite things
  }
  
  
>>

chorusLyrics = 
{
	\new Lyrics \lyricsto chorusVocal
	{
Em
When the dog bites
Am       B/D#
When the bee stings
Em               C
When I'm feel -- ing sad
  C      Am          G        C
I simp -- ly re -- mem -- ber my fa -- vor -- ite things
    Am           D7      G
And then I don't feel so bad	}
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
    \keepWithTag #'BiscuitUkeFretboard
    %\keepWithTag #'StandardGuitarFretboard 
    \new FretBoards 
	{
		\defineMyFretboard
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