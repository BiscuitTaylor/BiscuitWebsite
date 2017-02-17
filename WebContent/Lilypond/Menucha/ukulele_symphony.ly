\version "2.16.1"

date = #(strftime "%Y.%m.%d" (localtime (current-time)))
hour = #(strftime "%H:%M" (localtime (current-time)))
\header {
  title = "Ukulele Symphony"
  tagline = \markup 
  {
  	"Transcribed by Biscuit on: " \date "at " \hour 
  	"; engraved by LilyPond" $(lilypond-version)
  }
}

\paper {
  indent = 0\mm
  line-width = 160\mm
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}

#(ly:set-option 'relative-includes #t)
% With relative-includes set, the path for each \include command will be taken relative to the file containing that command.
% This behavior is recommended and it will become the default behavior in a future version of lilypond.
% ****************************************************************
\include "../fretboards/biscuit-fretboards.ly"
% Note - biscuit-fretboards.ly defines an open-g tuning
%        and three sets of movable chords.
% pitch-name without any apostrophe indicates Root position.
% pitch-name with two apostrophes indicates First inversion.
% pitch-name with three apostrophes indicates Second inversion.
% (pitch-name with one apostrophe is reserved for some transposing bullshit.)


defineMyFretboard =
<<
  %define fretboard diagrams for open-g tenor ukulele
  \biscuitCustomFretboards
>>

SymphonyChords = \chordmode 
{	
	\bigChordNames	% for geezers;  from biscuit-fretboards.ly

	\set Staff.instrumentName = #"Open G Tuning"
	\set Staff.shortInstrumentName = #"Root"
	g1:6 a1:9 b1:7 e''1:min c1:dim7
	\set Staff.shortInstrumentName = #"1st Inversion"
	g''1:6 a''1:9 b''1:7 e'''1:min c''1:dim7
	\set Staff.shortInstrumentName = #"2nd Inversion"
	g'''1:6 a'''1:9 b'''1:7 e1:min c'''1:dim7
}
SymphonyChordsOnStaff = \chordmode 
{	
	g,1:6 a,1:9 b,1:7 e1:min c1:dim7
	\break
	g/b1:6 a/cis1:9 b/ees1:7 e'/g1:min c'/ees1:dim7
	\break
	g/d1:6 a/e1:9 b/ges'''1:7 e'/b1:min c'/ges1:dim7
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score
{
<<
    \new FretBoards 
	{
        \defineMyFretboard
		{
			\SymphonyChords
		}
	}

	\new ChordNames 
	{
		% \with { midiInstrument = #"acoustic guitar (nylon)" }
		{
			\SymphonyChords
		}	
	}
  

	% Enable this to write the notes of each chord on a new staff below the melody staff
	\new Staff
	<<
	\new voice	
	{
		\SymphonyChordsOnStaff
	}
	>>
>>
  \layout
  {
    indent = 0.0\cm 
  }
} 
\paper
{
    top-margin = 0.5\in
}

% ****************************************************************
% end ly snippet
% ****************************************************************