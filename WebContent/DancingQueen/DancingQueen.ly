\version "2.14.0"

date = #(strftime "%Y.%m.%d" (localtime (current-time)))
hour = #(strftime "%H:%M" (localtime (current-time)))
\header {
  title = "Dancing Queen"
  composer = "Benny Andersson, Stig Anderson, Bjorn Ulvaeus"
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

introChords = \chordmode 
{ 
	%\set predefinedDiagramTable = #custom-fretboard-table-open-e-alternate
	e1 | cis1:7 | fis1:min | b2. b4:7
	d1 | b2.:min7 e4:7 | a1 | d1 | a2 d2 | a2 d2 |
}
versePrequelChords = \chordmode 
{ 
	a2. d4 | d1 | a | fis1:min | 
	e2 a2 | e4. a4. e4 | e4 fis2.:min | e2 fis2:min |
}

verseChords = \chordmode 
{	
    %\set predefinedDiagramTable = #custom-fretboard-table-open-e
	a2. d4 | d1 | a | fis1:min | 
	e2 a2 | e4. a4. e4 | e4 fis2.:min | e2 fis2:min |
	b1:min7 | e1:7 | 
	a1 | d1 |a1 | d1 |
	a1 | d1 |a2. e4 | fis2:min a2 |
	e1 | cis1:7 | fis1:min | b1 |
    d1 | b2.:min7 e4:7 | a1 | d1| a1 | d1 |
    a2 d2 | a2 d2 |
}

introMelody =
\new Voice = "introVocal"
{
	\relative c''
	{
		cis4 b8 b8 ~ b4 r4 |  cis4 b8 b8 ~ (b4 cis4)
		a8. b16 ~ b8 gis8 a8. b16 (b8) gis8 |
		a16 (gis16 fis4.) cis'8. (b16 ~ b8 a8) |
		gis8. a16 ~ a8 a8 ~ a2 |
		gis8. a16 ~ a8 a8 ~ a4 b16 a8 gis16 |
		gis8. a16 ~ a8 a8 ~ a2 | r1 | r1 | r1 |
	}
}
versePrequelMelody =
\new Voice = "versePrequelVocal"
{
	cis8 e16 e16 ~ e16 e8 e16 e8 e8 fis4 ~ | fis2 r2
	cis8 e16 e16 ~ e16 e8 e16 e8 e8 cis4 ~ | cis2 r4 cis16 (b8 a16)
	b8 b16 b16 ~ b16 b16 b8 cis8 ~ cis8 r4 |
	b8 b16 b16 ~ b16 b16 cis8 ~ cis8 r8 b16 a8 gis16 |
	e8. fis16 fis8 fis8 ~ fis2 | r1 |
	\bar "||"
	\pageBreak
}

verseMelody =
\new Voice = "verseVocal"
{
	cis'8 e16 e16 ~ e16 e8 e16 e8 e8 fis4 ~ | fis2 r2
	cis8 e16 e16 ~ e16 e8 e16 e8 e8 r4 | cis1
	b8 b16 b16 ~ b16 b16 b8 cis8 cis8 r4 |
	b8 b16 b16 ~ b16 b16 cis8 r4 b16 a8 gis16 |
	e8. fis16 fis8 fis8 ~ fis2 | r2 a8. b16 ~ b8 cis8 |
	cis8. d16 ~ d8 d8 ~ (d4. ~ d16 cis16 | b4) r4 e8. fis16 ~ fis8 gis8 |
	\bar "||"
	\break
	gis8. a16 ~ a8 a8 ~ a2 | gis8. a16 ~ a8 a8 ~ a8 b4 a8 |
	gis8. a16 ~ a8 a8 ~ a2 | r1
	gis8. a16 ~ a8 a8 ~ a2 | gis8. a16 ~ a8 a8 ~ a8 b4 a8 |
	b8. cis16 ~ cis8 cis8 ~ (cis4 b4 | c16 b16 a4. ~ a2)
	\bar "||"
	\pageBreak
	cis,4 b8 b8 ~ b4 r4 | cis4 b8 b8 ~ (b4 cis4) | 
	a8. b16 ~ b8 gis8 a8. b16 ~ b8 gis8 | a16 (gis16 fis4.) cis'8. (b16 ~ b8 a8) |
	gis8. a16 ~ a8 a8 ~ a2 | gis8. a16 ~ a8 a8 ~ a4 b16 a8 gis16 |
	gis8. a16 ~ a8 a8 ~ a2 | r1 | r1 | r1 |
	r1 r1
}

chorusMelody =
\new Voice = "chorusVocal"
{
  % Note the use of "\times 2/3" below to create a triplet
  r2 \times 2/3 { g4 g a } | b8 b4. r4 r8 c16 d16 | c4. a8 ~ a2 | r1 |
  r2 \times 2/3 { a4 b c } | a4 a4 r2 | r4 a16 a16 e'8 ~ e8 d8 ~ d4 | r1 |
}


introLyrics = 
{
	\lyricsto introVocal
	{
		You can dance | you can jive | hav -- ing the time of your | life Oh, |
		See that girl | watch that scene |  dig -- gin' the | Dan -- cing Queen | r1
	}
}

versePrequelLyrics = 
{
	\lyricsto versePrequelVocal
	{
		"Friday night" and the lights are low | look -- ing out for a place to go | 
		Oh, | where they play the right music | get -- ting in the swing you come to |
		look for a king. 
	}
}

%for the common refrain - drop it down to the middle of the lyric area
dropLyrics =
{
    \override LyricText #'extra-offset = #'(0 . -1)
    \override LyricHyphen #'extra-offset = #'(0 . -1)
    \override LyricExtender #'extra-offset = #'(0 . -1)
}
%back to normal
raiseLyrics =
{
    \revert LyricText #'extra-offset
    \revert LyricHyphen #'extra-offset
    \revert LyricExtender #'extra-offset
}


verseLyrics = 
<<
  \new Lyrics  \lyricsto verseVocal 
  {
  Anybo -- dy could be that guy | Night is young and the mus -- ic's | high 
  With a bit of rock mu -- sic | ev' -- ry -- thing is fine  
  %\markup { \right-brace #30  }
  \dropLyrics 
  You're in the | 
  mood for a dance |
  %\raiseLyrics 
  and when you | get the chance | You are the
  Danc -- ing Queen, | young and sweet, on -- ly | sev -- en -- teen
  Danc -- ing Queen | feel the beat from the | tam -- bou -- rine
  You can dance | you can jive
  hav -- ing the time of your | life Oh |
  see that girl | watch that scene dig -- gin' the |
  Danc -- ing Queen
  }

  \new Lyrics \lyricsto verseVocal 
  { \set stanza = "2. "
  "You're a" teaser, you turn 'em on | Leave 'em burn -- ing and then you're | gone
  Look -- ing out for a -- noth -- er | an -- y -- one will do  
  \repeat unfold 18 { \skip 1 }
  \repeat unfold 32 { \skip 1 }
  }
>>

chorusLyrics = 
{
	\new Lyrics \lyricsto chorusVocal
	{
		"We know" that | cry -- in's not a | bad thing %|  \break
		But stop your | cry -- in' |  when the birds sing
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
    \keepWithTag #'BiscuitUkeFretboard
    \removeWithTag #'StandardGuitarFretboard 
    \new FretBoards 
	{
		\defineMyFretboard
		{
	  		%\set predefinedDiagramTable = #default-fret-table
			\introChords
	    	\break
      		%\set predefinedDiagramTable = #custom-fretboard-table-uptheneck
		    \versePrequelChords
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
		%\set Staff.midiInstrument = {#"acoustic guitar (nylon)" }
	    	\introChords
	    	\break
		    \versePrequelChords
		    \verseChords
		    %\chorusChords
			%\repeat unfold 2 %'borrow' the intro chords for the outro
			%{
				\introChords
			%}
	}

	\new Voice = "vocal"
	{
		\tempo "Andante - 1.53 Hz " 4 = 92
		%\tempo "Andante " 4 = 92
		%\markup { (1.53 Hz) }
		\relative c''
		{
			\numericTimeSignature
			\time 4/4
			\key a \major
			   \set Staff.midiInstrument = #"ocarina"
	  		\introMelody
	    	\break
	  		\versePrequelMelody
	  		\break
			\repeat volta 2 
			{
				    \verseMelody
				    	% Third time, D.S.!
				  	%\bar "||"
					%\chorusMelody
			}
			\break
			%\repeat unfold 2 
			%{
				\introMelody
			%}
			%\new Voice = "outroGuitarRythm"
			%\with { \consists "Pitch_squash_engraver" }
			%{
				\relative c''
				{
					\improvisationOn
					c1
				}
			%}

		}
	}
  
	%Lyrics
	\new Lyrics
	{
		
		\introLyrics
		\break
		\versePrequelLyrics
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