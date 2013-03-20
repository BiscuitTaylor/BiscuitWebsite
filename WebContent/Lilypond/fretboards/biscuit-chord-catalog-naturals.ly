\version "2.16.1"

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
	a1 a1:7 a1:maj7 a1:aug a1:sus4 a1:sus2 a1:6 a1:9
	a1:min  a1:min7 a1:dim
	
	\set Staff.instrumentName = #"First Inversion "
	\set Staff.shortInstrumentName = #"First "
	a''1 a''1:7 a''1:maj7 a''1:aug a''1:sus4 a''1:sus2 a''1:6 a''1:9
	a''1:min  a''1:min7 a''1:dim
	
	\set Staff.instrumentName = #"Second Inversion "
	\set Staff.shortInstrumentName = #"Second "
	a'''1  a'''1:7 a'''1:maj7  a'''1:aug  a'''1:sus4 a'''1:sus2 a'''1:6 a'''1:9
	a'''1:min  a'''1:min7 a'''1:dim
}
aChordsOnStaff = \chordmode 
{	
	a1 | a1:7 | a1:maj7 | a1:aug | a1:sus4 | a1:sus2 | a1:6 | a1:9
	\break
	a1:min | a1:min7 | a1:dim
	\break
	%<cis e a>1 | a/cis1:maj7 | a/cis1:7 | a/cis1:aug | a/d1:sus4 | a/b1:sus2 | a/cis1:6 | a/cis1:9
	a/cis1 | a/cis1:7 | a/cis1:maj7 | a/cis1:aug | a/d1:sus4 | a/b1:sus2 | a/cis1:6 | a/cis1:9
	\break
	%TODO:  Note - Lilypond bug? - a/c1:min is drawn with one C, and one C#.
    % is there a way to circumvent this behavior?
% Yes - use explicit chord-building, like <c e g>2
% No - that's apparently incompatibile with chordmode
	a/c1:min | a/c1:min7 | a/c1:dim
	\break
	a/e1 | a/e1:7 | a/e1:maj7 | a/f1:aug | a/e1:sus4 | a/d1:sus2 | a/fis1:6 | a/e1:9
	\break
	a/e1:min | a/e1:min7 | a/dis1:dim
	\break
}

%%%%%%%%%%%%%% B %%%%%%%%%%%%%%%%%
bChords = \chordmode 
{	
	\bigChordNames	% for geezers;  from biscuit-fretboards.ly

	\set Staff.instrumentName = #"Root position "
	\set Staff.shortInstrumentName = #"Root "
	b1 b1:7 b1:maj7 b1:aug b1:sus4 b1:sus2 b1:6 b1:9
	b1:min  b1:min7 b1:dim
	
	\set Staff.instrumentName = #"First Inversion "
	\set Staff.shortInstrumentName = #"First "
	b''1 b''1:7  b''1:maj7 b''1:aug b''1:sus4 b''1:sus2 b''1:6 b''1:9
	b''1:min  b''1:min7 b''1:dim
	
	\set Staff.instrumentName = #"Second Inversion "
	\set Staff.shortInstrumentName = #"Second "
	b'''1  b'''1:7  b'''1:maj7  b'''1:aug b'''1:sus4 b'''1:sus2 b'''1:6 b'''1:9
	b'''1:min  b'''1:min7 b'''1:dim
}
bChordsOnStaff = \chordmode 
{	
	% Root
	b1 | b1:7  | b1:maj7 | b1:aug | b1:sus4 | b1:sus2 | b1:6 | b1:9 
	\break
	b1:min  b1:min7 b1:dim
	\break
	% First inversion
	b/dis1 | b/dis1:7 | b/dis1:maj7 | b/dis1:aug | b/e1:sus4 | b/cis1:sus2 | b/dis1:6 | b/dis1:9 
	\break
	b/d1:min  b/d1:min7 b/d1:dim
	\break
	% Second Inversion
	b/fis1 | b/fis1:7 | b/fis1:maj7 | b/g1:aug | b/fis:sus4 | b/fis1:sus2 | b/gis1:6 | b/fis1:9 
	\break
	b/fis1:min  b/fis1:min7 b/f:dim
	\break
}

%%%%%%%%%%%%%% C %%%%%%%%%%%%%%%%%
cChords = 
{	
	\transpose a c
	\aChords
}
cChordsOnStaff = \chordmode 
{	
	\transpose a c
	\aChordsOnStaff
}
%cChords = \chordmode 
%{	
%	\bigChordNames	% for geezers;  from biscuit-fretboards.ly
%	\set Staff.instrumentName = #"Root position "
%	\set Staff.shortInstrumentName = #"Root "
%	c1 c1:maj7 c1:7 
%	c1:min  c1:min7 
%	
%	\set Staff.instrumentName = #"First Inversion "
%	\set Staff.shortInstrumentName = #"First "
%	c''1 c''1:maj7 c''1:7 
%	c''1:min  c''1:min7 
%	
%	\set Staff.instrumentName = #"Second Inversion "
%	\set Staff.shortInstrumentName = #"Second "
%	c'''1  c'''1:maj7  c'''1:7  
%	c'''1:min  c'''1:min7
%}
%cChordsOnStaff = \chordmode 
%{	
%	c1 c1:maj7 c1:7 
%	c1:min  c1:min7 
%	\break
%	c/e1 c/e1:maj7 c/e1:7 
%	c/ees1:min  c/ees1:min7 
%	\break
%	c/g1 c/g1:maj7 c/g1:7 
%	c/g1:min  c/g:min7 
%}

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
	<<
	% do some crazy shit to try to prevent random linebreaks
	\new voice
	{
		\repeat unfold 7
		{
		    \noBreak \noBreak \noBreak \noBreak
		    \noBreak \noBreak \noBreak \break
		
		    \noBreak \noBreak \break
		
		% could use 'skips'	here -    s1 * 8
		    \noBreak \noBreak \noBreak \noBreak
		    \noBreak \noBreak \noBreak \break
		
		    \noBreak \noBreak \break
		
		    \noBreak \noBreak \noBreak \noBreak
		    \noBreak \noBreak \noBreak \break
		
		    \noBreak \noBreak \break
		}
    }
	\new voice	
	{
		\aChordsOnStaff
		\pageBreak
		\bChordsOnStaff
		\pageBreak
		
		\cChordsOnStaff
		\pageBreak
		\dChordsOnStaff
		\pageBreak
		
		\eChordsOnStaff
		\pageBreak
		\fChordsOnStaff
		\pageBreak
		
	    \gChordsOnStaff
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
% end
% ****************************************************************