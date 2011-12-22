\version "2.14.0"

date = #(strftime "%Y.%m.%d" (localtime (current-time)))
hour = #(strftime "%H:%M" (localtime (current-time)))
\header {
  title = "Little Bit"
  composer = "Miller et al."
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

introChords = \chordmode { c1:maj7 | f1:maj7 | c1:maj7 | f1:maj7 }

verseChords = \chordmode 
{	
	%\set Staff.midiInstrument = #"acoustic guitar (nylon)"
	c1 | g1 | f | c %|  \break
	c1 | g1 | f | g %|  \break
    a1:min | e1:min | f | c %| \break
    a1:min7 | c1 | g | c1 %| 
}

bridgeChords = \chordmode 
{
	f1 | g1| a1:min | a1:min | 
	f1 | f1 | g1 | g1 %| 
}

chorusChords = \chordmode 
{
	g1 | g1| a1:min | a1:min | 
	f1 | f1 | g1 | g1 %| 
}

introMelody =
\new Voice = "introGuitarRythm"
\with { \consists "Pitch_squash_engraver" }
{
	\relative c''
	{
		\improvisationOn
		b4. b4.  b4 e4. e4. e4
		b4. b4.  b4 e4. e4. e4
	}
}

verseMelody =
\new Voice = "verseVocal"
{
  r2. r8 d8 | e4 e8 d8 e8 d8 e4 | d4 g,2 r8 g8 | a4 c4 d c | e2. r8 d8 | \break
  e4 e8 d8 e8 d8 e4 | d4 g,2 r8 g8 | a4 c4 d c | e1 | \break
  e4 e8 d8 e8 d8 e4 | d4 g,2 r8 g8 | a4 c4 d c | e1 | \break
  e4 e8 d8 e8 d8 e4 | d4 g,2 r8 g8 | a4 c4 d c | e1
}

chorusMelody =
\new Voice = "chorusVocal"
{
  % Note the use of "\times 2/3" below to create a triplet
  r2 \times 2/3 { g4 g a } | b8 b4. r4 r8 c16 d16 | c4. a8 ~ a2 | r1 | \break
  r2 \times 2/3 { a4 b c } | a4 a4 r2 | r4 a16 a16 e'8 ~ e8 d8 ~ d4 | r1 |
}


verseLyrics = 
<<
  \new Lyrics  \lyricsto verseVocal 
  %\context Lyrics \lyricmode  \with { alignBelowContext = "melodyStaff" }
  %\lyricsto verseMelody 
  {
  If | I was a lit -- tle bit | young -- er I'd
  set my sights on | you
  If I was a lit -- tle more | reck -- less, I
  just might fol -- low | through
  If I had the | nerve to tell you
  what I see in | you, I'd
  throw a -- way these | crutch -- es and
  dance a -- way my | blues
  }

  \new Lyrics \lyricsto verseVocal 
  { \set stanza = "2. "
  }

  \new Lyrics \lyricsto verseVocal
  { \set stanza = "3. "	
  }
>>

chorusLyrics = 
{
	\new Lyrics \lyricsto chorusVocal
	{
		Come on over here little bird I'll | show you %|  \break
		The only thing worth dreaming for
		has always been right at your door.
		And I won't tell you you're a fool for wishing these things,n
		but little birds don't need to wish for wings
	}
}

%outroLyrics = 
%{
	\new Lyrics \lyricsto outroVocal
	{
		Don't let the sun catch you | cry -- in %|  \break
	}
%}

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
    %\keepWithTag #'BiscuitUkeFretboard \new FretBoards 
    \removeWithTag #'BiscuitUkeFretboard \new FretBoards 
	{
		\tag #'BiscuitUkeFretboard
		{
	      \set stringTunings = #biscuitTuning
	      \override FretBoard
	        #'(fret-diagram-details string-count) = #'4
	      \override FretBoard
	        #'(fret-diagram-details finger-code) = #'in-dot
        }
		{
			%\introChords
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
		%\with { midiInstrument = #"acoustic guitar (nylon)" }
		{
	    	%\introChords
		    \verseChords
		    %\chorusChords
		}	
	}

	\new Voice = "vocal"
	{
		\tempo "Allegro - 1.83 Hz " 4 = 110
		%\tempo "Andante " 4 = 92
		%\markup { (1.53 Hz) }
		\relative c''
		{
			\numericTimeSignature
			\time 4/4
	  		%\introMelody
			\repeat volta 2 
			{
				%\new Staff = "melodyStaff"
				{
					{
						\key c \major	
					    \set Staff.midiInstrument = #"ocarina"
						%\numericTimeSignature
						%\time 4/4
						{
						    \verseMelody
						    	% Third time, D.S.!
						  	%\bar "||"
							%\chorusMelody
						}
					}
				}
			}
		}
	}
  
	%Lyrics
	{
		%\introLyrics
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