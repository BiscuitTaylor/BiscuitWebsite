\version "2.16.1"
%\version "2.16.1"

date = #(strftime "%Y.%m.%d" (localtime (current-time)))
hour = #(strftime "%H:%M" (localtime (current-time)))
\header {
  title = "Biscuit's Fretboard Catalog - Relatives"
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


%%%%%%%%%%%%%%% A %%%%%%%%%%%%%%%%%
%aChords = \chordmode 
%{	
%	\bigChordNames	% for geezers;  from biscuit-fretboards.ly
%
%	\set Staff.instrumentName = #"Root position "
%	\set Staff.shortInstrumentName = #"Root "
%	a1 a1:maj7 a1:7 a1:aug
%	
%	\set Staff.instrumentName = #"First Inversion "
%	\set Staff.shortInstrumentName = #"First "
%	a''1 a''1:maj7 a''1:7 a''1:aug
%	
%	\set Staff.instrumentName = #"Second Inversion "
%	\set Staff.shortInstrumentName = #"Second "
%	a'''1  a'''1:maj7  a'''1:7   a'''1:aug
%}
%aChordsOnStaff = \chordmode 
%{	
%	a1 | a1:maj7 | a1:7 | a1:aug
%	\break
%	a/cis1 a/cis1:maj7 a/cis1:7 a/cis1:aug
%	\break
%	a/e1 a/e1:maj7 a/e1:7 a/f1:aug
%}
%%%%%%%%%%%%%%% A min %%%%%%%%%%%%%%%%%
%aMinChords = \chordmode 
%{	
%	\bigChordNames	% for geezers;  from biscuit-fretboards.ly
%
%	\set Staff.instrumentName = #"Root position "
%	\set Staff.shortInstrumentName = #"Root "
%	a1:min  a1:min7 
%	
%	\set Staff.instrumentName = #"First Inversion "
%	\set Staff.shortInstrumentName = #"First "
%	a''1:min  a''1:min7
%	
%	\set Staff.instrumentName = #"Second Inversion "
%	\set Staff.shortInstrumentName = #"Second "
%	a'''1:min  a'''1:min7
%}
%aMinChordsOnStaff = \chordmode 
%{	
%	a1:min | a1:min7 |
%	\break
%	a/c1:min  a/c1:min7 
%	\break
%	a/e1:min  a/e:min7 
%}
%
%%%%%%%%%%%%%%% B %%%%%%%%%%%%%%%%%
%bChords = \chordmode 
%{	
%	\bigChordNames	% for geezers;  from biscuit-fretboards.ly
%
%	\set Staff.instrumentName = #"Root position "
%	\set Staff.shortInstrumentName = #"Root "
%	b1 b1:maj7 b1:7  b1:aug
%	b1:min  b1:min7 
%	
%	\set Staff.instrumentName = #"First Inversion "
%	\set Staff.shortInstrumentName = #"First "
%	b''1 b''1:maj7 b''1:7  b''1:aug
%	b''1:min  b''1:min7 
%	
%	\set Staff.instrumentName = #"Second Inversion "
%	\set Staff.shortInstrumentName = #"Second "
%	b'''1  b'''1:maj7  b'''1:7   b'''1:aug
%	b'''1:min  b'''1:min7
%}
%bChordsOnStaff = \chordmode 
%{	
%	b1 b1:maj7 b1:7 b1:aug
%	b1:min  b1:min7 
%	\break
%	b/dis1 b/dis1:maj7 b/dis1:7 b/dis:aug
%	b/d1:min  b/d1:min7 
%	\break
%	b/fis1 b/fis1:maj7 b/fis1:7 b/g:aug
%	b/fis1:min  b/fis1:min7 
%}
%
%%%%%%%%%%%%%% C %%%%%%%%%%%%%%%%%
cChords = \chordmode 
{	
	\bigChordNames	% for geezers;  from biscuit-fretboards.ly
	\set Staff.instrumentName = #"Root position "
	\set Staff.shortInstrumentName = #"Root "
	c1 c1:maj7 c1:7  c1:aug c1:sus4 c1:sus2 c1:6 c1:9
	
	\set Staff.instrumentName = #"First Inversion "
	\set Staff.shortInstrumentName = #"First "
	c''1 c''1:maj7 c''1:7 c''1:aug c''1:sus4 c''1:sus2 c''1:6 c''1:9
	
	\set Staff.instrumentName = #"Second Inversion "
	\set Staff.shortInstrumentName = #"Second "
	c'''1  c'''1:maj7  c'''1:7  c'''1:aug c'''1:sus4 c'''1:sus2 c'''1:6 c'''1:9
}
cChordsOnStaff = \chordmode 
{	
	c1 c1:maj7 c1:7 c1:aug c1:sus4 c1:sus2 c1:6 c1:9
	\break
	c/e1 c/e1:maj7 c/e1:7 c/e1:aug c/d1:sus4 c/f1:sus2 c/e1:6 c/e1:9
	\break
	c/g1 c/g1:maj7 c/g1:7 c/gis1:aug c/g1:sus4 c/g1:sus2 c/g1:6 c/g1:9
}
%%%%%%%%%%%%%% C min %%%%%%%%%%%%%%%%%
cMinChords = \chordmode 
{	
	\bigChordNames	% for geezers;  from biscuit-fretboards.ly
	\set Staff.instrumentName = #"Root position "
	\set Staff.shortInstrumentName = #"Root "
	c1:min  c1:min7 c1:dim
	
	\set Staff.instrumentName = #"First Inversion "
	\set Staff.shortInstrumentName = #"First "
	c''1:min  c''1:min7 c''1:dim
	
	\set Staff.instrumentName = #"Second Inversion "
	\set Staff.shortInstrumentName = #"Second "
	c'''1:min  c'''1:min7 c'''1:dim
}
cMinChordsOnStaff = \chordmode 
{	
	c1:min  c1:min7  c1:dim
	\break
	c/ees1:min  c/ees1:min7 c/ees1:dim
	\break
	c/g1:min  c/g1:min7 c/ges1:dim
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
dMinChords = 
{	
	\transpose c d
	\cMinChords
}
dMinChordsOnStaff = \chordmode 
{	
	\transpose c d
	\cMinChordsOnStaff
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
eMinChords = 
{	
	\transpose d e
	\dMinChords
}
eMinChordsOnStaff = \chordmode 
{	
	\transpose d e
	\dMinChordsOnStaff
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
fMinChords = 
{	
	\transpose c f
	\cMinChords
}
fMinChordsOnStaff = \chordmode 
{	
	\transpose c f
	\cMinChordsOnStaff
}

%%%%%%%%%%%%%% G %%%%%%%%%%%%%%%%%
gChords = 
{	
	\transpose c g
	\cChords
}
gChordsOnStaff = \chordmode 
{	
	\transpose c g
	\cChordsOnStaff
}
gMinChords = 
{	
	\transpose c g
	\cMinChords
}
gMinChordsOnStaff = \chordmode 
{	
	\transpose c g
	\cMinChordsOnStaff
}

%%%%%%%%%%%%%% A %%%%%%%%%%%%%%%%%
aChords = 
{	
	\transpose c a
	\cChords
}
aChordsOnStaff = \chordmode 
{	
	\transpose c a
	\cChordsOnStaff
}
aMinChords = 
{	
	\transpose c a
	\cMinChords
}
aMinChordsOnStaff = \chordmode 
{	
	\transpose c a
	\cMinChordsOnStaff
}

%%%%%%%%%%%%%% B %%%%%%%%%%%%%%%%%
bChords = 
{	
	\transpose c b
	\cChords
}
bChordsOnStaff = \chordmode 
{	
	\transpose c b
	\cChordsOnStaff
}
bMinChords = 
{	
	\transpose c b
	\cMinChords
}
bMinChordsOnStaff = \chordmode 
{	
	\transpose c b
	\cMinChordsOnStaff
}

%%%%%%%%%%%%%% D %%%%%%%%%%%%%%%%%
dChords = 
{	
	\transpose c d
	\cChords
}
bChordsOnStaff = \chordmode 
{	
	\transpose c d
	\cChordsOnStaff
}
dMinChords = 
{	
	\transpose c d
	\cMinChords
}
dMinChordsOnStaff = \chordmode 
{	
	\transpose c d
	\cMinChordsOnStaff
}


%%%%%%%%%%%%%%% G %%%%%%%%%%%%%%%%%
%gChords = \chordmode 
%{	
%	\bigChordNames	% for geezers;  from biscuit-fretboards.ly
%	\set Staff.instrumentName = #"Root position "
%	\set Staff.shortInstrumentName = #"Root "
%	g1 g1:maj7 g1:7 g1:aug
%	g1:min  g1:min7 
%	
%	%\break
%	
%	\set Staff.instrumentName = #"First Inversion "
%	\set Staff.shortInstrumentName = #"First "
%	g''1 g''1:maj7 g''1:7 g''1:aug
%	g''1:min  g''1:min7 | 
%	
%	%\break
%	
%	\set Staff.instrumentName = #"Second Inversion "
%	\set Staff.shortInstrumentName = #"Second "
%	g'''1  g'''1:maj7  g'''1:7  g'''1:min  g'''1:min7 g'''1:aug
%}
%gChordsOnStaff = \chordmode 
%{	
%	g1 | g1:maj7 | g1:7 | g1:aug
%	g1:min | g1:min7 |
%	\break
%	g/b1 g/b1:maj7 g/b1:7 g/b1:aug
%	g/bes1:min  g/bes1:min7 
%	\break
%	g/d1 g/d1:maj7 g/d1:7 g/dis:aug
%	g/d1:min  g/d:min7 
%}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score
{
<<
    \new FretBoards 
	{
        \defineMyFretboard
		{
			\gChords
			\eMinChords

			\cChords
			\aMinChords

			\dChords
			\bMinChords
			
			\fChords
			\dMinChords
		}
	}

	\new ChordNames 
	{
		% \with { midiInstrument = #"acoustic guitar (nylon)" }
		{
			\gChords
			\eMinChords
			
			\cChords
			\aMinChords
			
			\dChords
			\bMinChords
			
			\fChords
			\dMinChords
		}	
	}
  

	% Enable this to write the notes of each chord on a new staff below the melody staff
	\new Staff
	{
	    \gChordsOnStaff
		\break
		\eMinChordsOnStaff
		\pageBreak
		
		\cChordsOnStaff
		\break
		\aMinChordsOnStaff
		\pageBreak
		
		\dChordsOnStaff
		\break
		\bMinChordsOnStaff
		\pageBreak
		
		\fChordsOnStaff
		\break
		\dMinChordsOnStaff
		\pageBreak
		
	}
>>

\layout { indent = 0.0\cm }
} 

% ****************************************************************
% end ly snippet
% ****************************************************************