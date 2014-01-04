\version "2.16.2"

date = #(strftime "%Y.%m.%d" (localtime (current-time)))
hour = #(strftime "%H:%M" (localtime (current-time)))
\header {
  title = "Your Lone Journey"
  composer = "Rosa Lee Watson / Doc Watson"
%  tagline = \markup 
%  {
%  	"Transcribed by Biscuit on: " \date "at " \hour 
%  	"; engraved by LilyPond" $(lilypond-version)
%  }
% Can't figure out how to get spacing between last lyric and tagline...
% So, fuckit - no tagline.
  tagline = ##f
}

% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************

\paper {
  indent = 0\mm
  line-width = 160\mm
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
  ragged-bottom=##f
  ragged-last-bottom=##f
  
}


introChords = \chordmode { g:min | f | ees }

verseChords = \chordmode 
{	
	%Big chord names, so old geezers can percieve them			
	\override ChordName #'font-size = #2 
	%Bold chord names, so old geezers can grok them			
	\override ChordName #'font-series = #'bold

	\set ChordNames.midiInstrument = "ocarina"
	\set ChordNames.midiMaximumVolume = #0.2	%There must be a dynamic mark on the first note of each instrument for this to work correctly.
	g1 | \skip1 | \skip1 |
	d1 | g1     | c1 | g1 
	\skip1      | \skip1 | \skip1 | d1 | d2 g2 | g2 d2 | d2 g2 | g2 c2 | c2 g2 | g1
}
chorusChords = \chordmode 
{	
	%Big chord names, so old geezers can percieve them			
	\override ChordName #'font-size = #2 
	%Bold chord names, so old geezers can grok them			
	\override ChordName #'font-series = #'bold

	%\set Staff.midiInstrument = #"acoustic guitar (nylon)"
	g1 | d1 | \skip1| \skip1 | g1 | \skip1
	g1 | d1 | g1  | c1 | g1  | \skip1
}

% absolute pitch
verseMelody =
\new Voice = "verseVocal"
{
  r2 d'4 g'4   | g'8 g'8 ~ g'4 e'4 d'4   | g'2 g'4 b'4 |
  a'2 a'4 g'4  | e'8 (d'8) ~ d'4 d'4 g'4 | g'2 e'2     | d'1 \break
  r2 d'4 g'4   | g'2 e'4 (d'4)           | g'2 g'4 b'4        
  											 \time 3/2 | a'2 r4 c''4  b'4 a'4 |  \time 2/2
                                                      %Note - this a2 r4 should be a1 ~a2 (for the first two verses only)?              
                                                      %3rd verse - this a2 r4 should be a2 a4?              
  g'4 r4 d''4 b'4 | a'2 ~ a'4 g'4 | e'8 (d'4.) d'4 g'4 | g'2 e'2 | d'2 r2
}

chorusMelody =
\new Voice = "chorusVocal"
{
  r2 a'4 g'4 | a'4 d''4 d''2 ~ | d''1 |
  r2 a'4 g'4 | b'4 d''4 d''2 ~ | d''1 | 
  \break
  r2 d''4 b'4 | a'2  a'4 g'4 | e'8 (d'8) ~ d'4  d'4 (g'4) | g'2  e'4 (d'4) | d'1           
}


verseLyrics = 
<<
  %\new Lyrics  \lyricsto verseVocal 
  \new Lyrics  
  %\context Lyrics \lyricmode  \with { alignBelowContext = "melodyStaff" }
  %\lyricsto verseMelody 
  %\override LyricText #'font-size = #2	% increase font by two 'sizes'
  {
  \lyricmode {
	  		" "2 " Go-"4 "d's"4 "given"2 "u-"4 "s"4 years2 "o-"4 "f"4 "hap-"2 "piness"2
	  		"here;"2 "no-"4 "w"4 "we"2 "must"2 part1
			" "2 "A-"4 "nd"4 as2 "th-"4 "e"4 "an-"2 "ge-"4 "ls"4 come2. and4 call4 for4 you2
			"Th-"4 "e"4 pangs2 " "4 of4 "gri-"8 "ef"4. "tu-"4 "g"4 at2 my2 heart2  " "2
	  		}
  }

  %\new Lyrics  \lyricsto verseVocal 
  \new Lyrics  
  {
  \lyricmode
	  { \set stanza = "2. "
	  " "2  Oh4 the4 days2 will4 be4 "emp-"2 "ty,"4 the4 nights2 "..."4 so4 "lo-"8 "ng"4. "with-"4
	out4 you2 my2 love1
    " "2 "A-"4 "nd"4 | as2 "Go-"4 "d"4 "calls"2 " "4 "for"4 you2. 
    "I'm"4 left4 "a-"4 "lone"2
	"Bu-"4 "t"4 we2. will4 "mee-"8 "t"4. "i-"4 "n"4 heaven2 "a-"4 "bove"2 " "2
	  }
  }
  
  \new Lyrics  
  {
  \lyricmode
	  { \set stanza = "3. "
	  " "2  "Fo-"4 "nd"4 mem'-2 ries4 "I'll"4 "keep"2 "of"4 the4 "hap-"2. "py"4 "wa-"8 "ys"4. "that"4
	on4 earth2 we2 trod1
    " "2 "A-"4 "nd"4 | when2 "I"2 "come"2 "we"4 "will"4 walk2 "ha-"4 "nd"4
     "i-"4 "n"4 "hand"2
	"A-"4 "s"4 one2. in4 "heav-"8 "en"4. "in"4 "the"4 family2 "of"4 "god"2 " "2
	  }
  }
>>

\break
chorusLyrics = 

  \new Lyrics  
  {
  \lyricmode {
	  		" "2  Oh4 my4 "da-"4 "r-"4 "ling"2 " "2 " "2 " "2 
	  		        "m-"4 "y"4 "da-"4 "r-"4 "ling"2 " "2 " "2 " "2
			My4 heart4 breaks2 as4 you4 take2
			"Yo-"4 "ur"4 "lone"2 "jou-"4 "r-"4 "ney"1
	  		}
  }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#(define my-instrument-equalizer-alist '())

#(set! my-instrument-equalizer-alist
  (append
    '(
      ("violin" . (0.7 . 0.9))
      ("ocarina" . (0.1 . 0.3)))
    my-instrument-equalizer-alist))

#(define (my-instrument-equalizer s)
  (let ((entry (assoc s my-instrument-equalizer-alist)))
    (if entry
      (cdr entry))))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score
{
<<
    %\new TabStaff
	%{
		\set TabStaff.stringTunings =   #biscuitTuning
	 	\introChords 
		\verseMelody
	%}
	
	\new ChordNames \with { midiInstrument = "ocarina" } 
	%\context ChordNames = "chords"
	{		
		\set Score.instrumentEqualizer = #my-instrument-equalizer		%\with { midiInstrument = #"acoustic guitar (nylon)" }

		% show chordnames only when the chord changes, 
		% or at the beginning of a line.
		% This is the only way I know to get a chord change in the middle of a measure,
		% without getting a "N.C." symbol at the start of the measure.
		\set chordChanges = ##t
		{
	    	%\introChords
			\transpose g e
		    \verseChords
			\transpose g e
		    \chorusChords
		}	
	}

	\new Voice = "vocal"
	{
		\tempo "Andante" 2 = 72
		%\tempo "Andante " 4 = 92
		\numericTimeSignature
		\time 2/2
		%\absolute	% relative pitches don't always transpose so well.
		\transpose g' e'
		{
	  		%\introMelody
			\repeat volta 3 
			{
				%\new Staff = "melodyStaff"
				{
					\key g \major	
				    \set Staff.midiInstrument = #"violin"
					%\numericTimeSignature
					%\time 4/4
					{
					    \verseMelody
					}
				}
				\break
				{
					{
					    \chorusMelody
					}
				}
			}

		}
	}
  
	%Lyrics
	{
		%\introLyrics
		\verseLyrics
		\chorusLyrics
	}

	% Enable this to write the notes of each chord on a new staff below the melody staff
	%\new Staff \chorusChords
>>

  \layout { 
  	indent = 0.0\cm
  	\context {
    	\Lyrics
    	\override LyricText #'font-size = #+2
  	}
  }
  \midi {}
} 

% ****************************************************************
% end ly snippet
% ****************************************************************