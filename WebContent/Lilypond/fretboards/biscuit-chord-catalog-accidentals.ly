\version "2.16.0"
%\version "2.14.0"

date = #(strftime "%Y.%m.%d" (localtime (current-time)))
hour = #(strftime "%H:%M" (localtime (current-time)))
\header {
  title = "Biscuit's Fretboard Catalog"
  tagline = \markup 
  {
  	"Transcribed by Biscuit on: " \date "at " \hour 
%  	"; engraved by LilyPond" #(ly:export (lilypond-version))
	%ly:export is no longer supported in 2.16
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
\include "../fretboards/biscuit-fretboards.ly"
% Note - biscuit-fretboards.ly defines an open-g tuning
%        and three sets of movable chords.
% pitch-name without any apostrophe indicates Root position.
% pitch-name with one apostrophe indicates First inversion.
% pitch-name with two apostrophes indicates Second inversion.

defineMyFretboard =
<<
  %define fretboard diagrams for open-g tenor ukulele
  \biscuitCustomFretboards
>>


%C Sharp
cSharpChords = \chordmode 
{	
	\bigChordNames	% for geezers;  from biscuit-fretboards.ly

	\set Staff.instrumentName = #"Root position "
	\set Staff.shortInstrumentName = #"Root "
	cis1 cis1:maj7 cis1:7 cis1:min  cis1:min7 
	
	\set Staff.instrumentName = #"First Inversion "
	\set Staff.shortInstrumentName = #"First "
	cis'1 cis'1:maj7 cis'1:7 cis'1:min  cis'1:min7 
	
	\set Staff.instrumentName = #"Second Inversion "
	\set Staff.shortInstrumentName = #"Second "
	cis''1  cis''1:maj7  cis''1:7  cis''1:min  cis''1:min7
}
cSharpChordsOnStaff = \chordmode 
{	
	cis1 cis1:maj7 cis1:7 
	cis1:min  cis1:min7 
	\break
	cis/f1 cis/f1:maj7 cis/f1:7 
	cis/e1:min  cis/e1:min7 
	\break
	cis/gis1 cis/gis1:maj7 cis/gis1:7 
	cis/gis1:min  cis/gis:min7 
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score
{
<<
    \new FretBoards 
	{
        \defineMyFretboard
		{
			\cSharpChords		
		}
	}

	\new ChordNames 
	{
		% \with { midiInstrument = #"acoustic guitar (nylon)" }
		{
			\cSharpChords
			
		}	
	}
  

	% Enable this to write the notes of each chord on a new staff below the melody staff
	\new Staff
	{
	 	\cSharpChordsOnStaff
	}
>>

  \layout { indent = 0.0\cm }
} 

% ****************************************************************
% end ly snippet
% ****************************************************************