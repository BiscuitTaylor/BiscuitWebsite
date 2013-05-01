\version "2.16.1"

date = #(strftime "%Y.%m.%d" (localtime (current-time)))
hour = #(strftime "%H:%M" (localtime (current-time)))
\header {
  title = "Biscuit Fretboard Map"
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

FretMapChords = \chordmode 
{	
	\bigChordNames	% for geezers;  from biscuit-fretboards.ly

	\set Staff.instrumentName = #"Open G Tuning"
	\set Staff.shortInstrumentName = #"Open G"
	d'''1:min d'''1:min7 d1:min7 d1:min d''1:min d''1:min7
}
FretMapChordsOnStaff = \chordmode 
{	
	% TODO: abandon chordmode; use "chorded notes"
	d/a1:min7 d/a1:min d1:min7 d1:min d/f1:min d/f1:min7
}
%FretMapChordsOnStaff = 
%{	
%	% "chorded notes" (absolute pitch (octave)
%    <a d' f' a'>1 <a d' f' c''>1
%    <c' f' a' d''>1 <d' f' a' d''>1   
%    <f' a' d'' f''>1 <f' c'' d'' f''>1
%}

TabChordsOnStaff = 
{	
	% "chorded notes" (absolute pitch (octave)
    <a\4 d'\3 f'\2 a'\1>1 <a\4 d'\3 f'\2 c''\1>1
    <c'\4 f'\3 a'\2 d''\1>1 <d'\4 f'\3 a'\2 d''\1>1   
    <f' a' d'' f''>1 <f' c'' d'' f''>1
}

TabScale = 
{	
	% "scale" (absolute pitch (octave) 
	% unadorned pitch names = the octave (c3 to b3) immediately below middle c
    a4\4 d'4\3 f'4\2 a'4\1  a4\4 d'4\3 f'4\2 c''4\1
    c'4\4 f'4\3 a'4\2 d''4\1  d'4\4 f'4\3 a'4\2 d''4\1  
    <f' a' d'' f''>1 <f' c'' d'' f''>1
}

TabMap = 
{	
	\time 1/4
	% "scale" (absolute pitch (octave) 
	% unadorned pitch names = the octave (c3 to b3) immediately below middle c
    <a\4 a'\1>4
    <d'\3 f'\2>4 
    r4 
    <c'\4 c''\1>4 
    f'4\3 
    <a'\2 d''\1>4
    r4 
    r4
    <f'\4 a'\3 f''\1>4 
    r4 d''4\2 
    <c''\3>4
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score
{
<<
    \new FretBoards 
	{
        \defineMyFretboard
		{
			\FretMapChords
		}
	}

	\new ChordNames 
	{
		% \with { midiInstrument = #"acoustic guitar (nylon)" }
		{
			\FretMapChords
		}	
	}
  

	% Enable this to write the notes of each chord on a new staff below the melody staff
	\new Staff
	<<
	\new voice	
	{
		\FretMapChordsOnStaff
	}
	>>
	<<
	\new voice	
	{
		\TabChordsOnStaff
	}
	>>
	\new TabStaff {
		\set TabStaff.stringTunings = #biscuitTuning
		\TabChordsOnStaff
		}
	
	\new voice	
	{
		\TabScale
	}

	\new TabStaff {
		\set TabStaff.stringTunings = #biscuitTuning
		\TabScale
	}
>>
}
\score
{

% Part 2 - fretboard map
<<	
	\new voice	
	{
		\TabMap
	}

	
	\new TabStaff {
		\override TabStaff.Clef #'transparent = ##t	
		\set TabStaff.stringTunings = #biscuitTuning
		\TabMap
	}
>>
  \layout
  {
    indent = 0.0\cm 
  }
} 
\markup {"Traversing the neck with a pentatonic scale - chord by chord"}

\paper
{
    top-margin = 0.5\in
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

