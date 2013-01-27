\version "2.16.1"

date = #(strftime "%Y.%m.%d" (localtime (current-time)))
hour = #(strftime "%H:%M" (localtime (current-time)))
\header {
  title = "Sweet Georgia Brown"
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

SweetGeorgiaChords = \chordmode 
{	
	\bigChordNames	% for geezers;  from biscuit-fretboards.ly

	\set Staff.instrumentName = #"Open G Tuning"
	\set Staff.shortInstrumentName = #"Open G"
	d1:7 g'''1:7 c''1:7 c1:aug f''1 a''1:7 d1:min c''1:7:aug
}
SweetGeorgiaChordsOnStaff = \chordmode 
{	
	d1:7 g1:7 c1:7 c1:aug f1 a1:7 d1:min c1:7:aug
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score
{
<<
    \new FretBoards 
	{
        \defineMyFretboard
		{
			\SweetGeorgiaChords
		}
	}

	\new ChordNames 
	{
		% \with { midiInstrument = #"acoustic guitar (nylon)" }
		{
			\SweetGeorgiaChords
		}	
	}
  

	% Enable this to write the notes of each chord on a new staff below the melody staff
	\new Staff
	<<
	\new voice	
	{
		\SweetGeorgiaChordsOnStaff
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