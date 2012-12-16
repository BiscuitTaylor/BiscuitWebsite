\version "2.16.0"
%\version "2.14.0"

date = #(strftime "%Y.%m.%d" (localtime (current-time)))
hour = #(strftime "%H:%M" (localtime (current-time)))
\header {
  title = "Biscuit's Fretboard Catalog - Naturals"
  tagline = \markup 
  {
  	"Transcribed by Biscuit on: " \date "at " \hour 
%  	"; engraved by LilyPond" #(ly:export (lilypond-version))
	%ly:export is no longer supported in 2.16
  	"; engraved by LilyPond" $(lilypond-version)
  }
}

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
% pitch-name with two apostrophes indicates First inversion.
% pitch-name with three apostrophes indicates Second inversion.
% (pitch-name with one apostrophe is reserved for some transposing bullshit.)


defineMyFretboard =
<<
  %define fretboard diagrams for open-g tenor ukulele
  \biscuitCustomFretboards
>>


%%%%%%%%%%%%%% A %%%%%%%%%%%%%%%%%
aChords = \chordmode 
{	
	\bigChordNames	% for geezers;  from biscuit-fretboards.ly

	\set Staff.instrumentName = #"Root position "
	\set Staff.shortInstrumentName = #"Root "
	a1 a1:maj7 a1:7 a1:aug
	a1:min  a1:min7 
	
	\set Staff.instrumentName = #"First Inversion "
	\set Staff.shortInstrumentName = #"First "
	a''1 a''1:maj7 a''1:7 a''1:aug
	a''1:min  a''1:min7
	
	\set Staff.instrumentName = #"Second Inversion "
	\set Staff.shortInstrumentName = #"Second "
	a'''1  a'''1:maj7  a'''1:7 a'''1:aug
	a'''1:min  a'''1:min7
}
aChordsOnStaff = \chordmode 
{	
	a1 | a1:maj7 | a1:7
	a1:min | a1:min7 |
	\break
	a/cis1 a/cis1:maj7 a/cis1:7 
	a/c1:min  a/c1:min7 
	\break
	a/e1 a/e1:maj7 a/e1:7 
	a/e1:min  a/e:min7 
}

%%%%%%%%%%%%%% B %%%%%%%%%%%%%%%%%
bChords = \chordmode 
{	
	\bigChordNames	% for geezers;  from biscuit-fretboards.ly

	\set Staff.instrumentName = #"Root position "
	\set Staff.shortInstrumentName = #"Root "
	b1 b1:maj7 b1:7 
	b1:min  b1:min7 
	
	\set Staff.instrumentName = #"First Inversion "
	\set Staff.shortInstrumentName = #"First "
	b''1 b''1:maj7 b''1:7 
	b''1:min  b''1:min7 
	
	\set Staff.instrumentName = #"Second Inversion "
	\set Staff.shortInstrumentName = #"Second "
	b'''1  b'''1:maj7  b'''1:7  
	b'''1:min  b'''1:min7
}
bChordsOnStaff = \chordmode 
{	
	b1 b1:maj7 b1:7 
	b1:min  b1:min7 
	\break
	b/dis1 b/dis1:maj7 b/dis1:7 
	b/d1:min  b/d1:min7 
	\break
	b/fis1 b/fis1:maj7 b/fis1:7 
	b/fis1:min  b/fis1:min7 
}

%%%%%%%%%%%%%% C %%%%%%%%%%%%%%%%%
cChords = \chordmode 
{	
	\bigChordNames	% for geezers;  from biscuit-fretboards.ly
	\set Staff.instrumentName = #"Root position "
	\set Staff.shortInstrumentName = #"Root "
	c1 c1:maj7 c1:7 
	c1:min  c1:min7 
	
	\set Staff.instrumentName = #"First Inversion "
	\set Staff.shortInstrumentName = #"First "
	c''1 c''1:maj7 c''1:7 
	c''1:min  c''1:min7 
	
	\set Staff.instrumentName = #"Second Inversion "
	\set Staff.shortInstrumentName = #"Second "
	c'''1  c'''1:maj7  c'''1:7  
	c'''1:min  c'''1:min7
}
cChordsOnStaff = \chordmode 
{	
	c1 c1:maj7 c1:7 
	c1:min  c1:min7 
	\break
	c/e1 c/e1:maj7 c/e1:7 
	c/ees1:min  c/ees1:min7 
	\break
	c/g1 c/g1:maj7 c/g1:7 
	c/g1:min  c/g:min7 
}

%%%%%%%%%%%%%% D %%%%%%%%%%%%%%%%%
dChords = 
{	
	\transpose c d
	\cChords
}
dChordsOnStaff = \chordmode 
{	
	\transpose c d
	\cChordsOnStaff
}

%%%%%%%%%%%%%% E %%%%%%%%%%%%%%%%%
eChords = 
{	
	\transpose d e
	\dChords
}
eChordsOnStaff = \chordmode 
{	
	\transpose d e
	\dChordsOnStaff
}

%%%%%%%%%%%%%% F %%%%%%%%%%%%%%%%%
fChords = 
{	
	\transpose c f
	\cChords
}
fChordsOnStaff = \chordmode 
{	
	\transpose c f
	\cChordsOnStaff
}


%%%%%%%%%%%%%% G %%%%%%%%%%%%%%%%%
gChords = \chordmode 
{	
	\bigChordNames	% for geezers;  from biscuit-fretboards.ly
	\set Staff.instrumentName = #"Root position "
	\set Staff.shortInstrumentName = #"Root "
	g1 g1:maj7 g1:7 
	g1:min  g1:min7 
	
	%\break
	
	\set Staff.instrumentName = #"First Inversion "
	\set Staff.shortInstrumentName = #"First "
	g''1 g''1:maj7 g''1:7 
	g''1:min  g''1:min7 | 
	
	%\break
	
	\set Staff.instrumentName = #"Second Inversion "
	\set Staff.shortInstrumentName = #"Second "
	g'''1  g'''1:maj7  g'''1:7  g'''1:min  g'''1:min7
}
gChordsOnStaff = \chordmode 
{	
	g1 | g1:maj7 | g1:7
	g1:min | g1:min7 |
	\break
	g/b1 g/b1:maj7 g/b1:7 
	g/bes1:min  g/bes1:min7 
	\break
	g/d1 g/d1:maj7 g/d1:7 
	g/d1:min  g/d:min7 
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score
{
<<
    \new FretBoards 
	{
        \defineMyFretboard
		{
			\aChords
			\bChords
			\cChords
			\dChords
			\eChords
			\fChords
		    \gChords
		}
	}

	\new ChordNames 
	{
		% \with { midiInstrument = #"acoustic guitar (nylon)" }
		{
			\aChords
			\bChords
			\cChords
			\dChords
			\eChords
			\fChords
		    \gChords
		}	
	}
  

	% Enable this to write the notes of each chord on a new staff below the melody staff
	\new Staff
	{
		\aChordsOnStaff
		\break
		\bChordsOnStaff
		\pageBreak
		
		\cChordsOnStaff
		\break
		\dChordsOnStaff
		\pageBreak
		
		\eChordsOnStaff
		\break
		\fChordsOnStaff
		\pageBreak
		
	    \gChordsOnStaff
	}
>>

  \layout { indent = 0.0\cm }
} 

% ****************************************************************
% end ly snippet
% ****************************************************************