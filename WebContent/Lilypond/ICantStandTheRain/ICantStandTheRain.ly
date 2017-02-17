\version "2.16.1"

date = #(strftime "%Y.%m.%d" (localtime (current-time)))
hour = #(strftime "%H:%M" (localtime (current-time)))
\header {
  title = "I Can't Stand the Rain"
  composer = "Ann Peebles, Don Bryant, Bernard Miller"
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
\include "predefined-guitar-fretboards.ly"
% If using standard guitar fretboards,
% (see \keepWithTag at the start of the \score section)
% you can comment-out the biscuit-fretboards include. 
\include "../fretboards/biscuit-fretboards.ly"
\include "predefined-ukulele-fretboards.ly"

defineMyFretboard =
<<
\tag #'StandardGuitarFretboard
{
  %Nothing to define... defaults work just fine
  %\set predefinedDiagramTable = #default-fret-table
}
\tag #'BiscuitUkeFretboard
{
  %define fretboard diagrams for open-g tenor ukulele
  \biscuitCustomFretboards
  %\set predefinedDiagramTable = #custom-fretboard-table-uptheneck
}
\tag #'StandardUkeFretboard
{
  %define fretboard diagrams for c6 tenor ukulele
    \set stringTunings = #ukulele-tuning
}
>>

introChords = \chordmode 
{ 
	%\set predefinedDiagramTable = #custom-fretboard-table-open-e-alternate
	g1 | cis1:7 | fis1:min | b2. b4:7
	d1 | b2.:min7 e4:7 | a1 | d1 | a2 d2 | b4 c4 c4 b8 g''d8 |
}

verseChords = \chordmode 
{	
    %\set predefinedDiagramTable = #custom-fretboard-table-open-e
	g2. d4 | d1 | a | fis1:min | 
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
	\relative c'
	{
	r4 r8 b8 c8 c8 b8 g''8 ~ | g1 |
	r4 r8 b,8 c8 c8 b8 g''8 ~ | g1 |
	r1
	r4 r8 b,8 c8 c8 b8 g''8 ~ | g1 |
	r4 r8 b,8 c8 c8 b8 g''8 ~ | g1 |
	r1 
	}
}

verseMelody =
\new Voice = "verseVocal"
{
	r4 r8 b8 c8 c8 b8 g''8 ~ | g1 |
	r4 r8 b8 c8 c8 b8 g''8 ~ | g1 |
	r1
	r4 r8 b8 c8 c8 b8 g''8 ~ | g1 |
	r4 r8 b8 c8 c8 b8 g''8 ~ | g1 |
	r1 
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
		I cant stand the ra- | in - against my | window |
		bringin' back sweet memo- | ries
		I cant stand the rain | against my | window |
		cause you're not here with | me
	}
}
chorusLyrics = 
{
	\lyricsto chorusVocal
	{
		I cant stand the ra- | in - against my | window |
		bringin' back sweet memo- | ries
		"Hey, window pane" | "Do you re -- mem -- ber"  |
		"How sweet it used to be" | 
  
	}
}

verseLyrics = 
<<
  \new Lyrics  \lyricsto verseVocal 
  {
		"Woah empty pil"- | "low where his head used to lay" | 
		"I know you got some" | "sweet memories; but, like a window" |
		"You ain't got nothing to say"
  }

  \new Lyrics \lyricsto verseVocal 
  { \set stanza = "2. "
  "When we was together" | "everything was so grand" |
  "Now that we've parted" | "there ai'nt but one thing" |
  "I just can't stand"
  
  }
>>


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
    \removeWithTag #'BiscuitUkeFretboard
    \keepWithTag #'StandardUkeFretboard
    \removeWithTag #'StandardGuitarFretboard 
    \new FretBoards 
	{
		\defineMyFretboard
		{
			\introChords
	    	\break
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
		    \verseChords
		    %\chorusChords
			%\repeat unfold 2 %'borrow' the intro chords for the outro
			%{
				\introChords
			%}
	}

	\new Voice = "vocal"
	{
		\tempo "Moderately " 4 = 84
		\relative c''
		{
			\numericTimeSignature
			\time 4/4
			\key g \major
			   \set Staff.midiInstrument = #"ocarina"
	  		\introMelody
	    	\break
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