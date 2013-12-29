\version "2.16.2"

date = #(strftime "%Y.%m.%d" (localtime (current-time)))
hour = #(strftime "%H:%M" (localtime (current-time)))
\header {
  title = "Your Lone Journey"
  composer = "Rosa Lee Watson / Doc Watson"
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


introChords = \chordmode { g:min | f | ees }

verseChords = \chordmode 
{	
	%Big chord names, so old geezers can percieve them			
	\override ChordName #'font-size = #2 
	%Bold chord names, so old geezers can grok them			
	\override ChordName #'font-series = #'bold

	%\set Staff.midiInstrument = #"acoustic guitar (nylon)"
	\partial 2  g2 | \skip1 | \skip1 | d1 |
	g1             | c1 | g1 
	\skip1         | \skip1 | \skip1 | d1 | \skip1 | g1 | d1 | \skip1 | g1 | c1 | g1
}
chorusChords = \chordmode 
{	
	%Big chord names, so old geezers can percieve them			
	\override ChordName #'font-size = #2 
	%Bold chord names, so old geezers can grok them			
	\override ChordName #'font-series = #'bold

	%\set Staff.midiInstrument = #"acoustic guitar (nylon)"
	\partial 2  g2 | d1 | \skip1| \skip1| \skip1 | g1 | \skip2
	r2 g2 | d1 g1  | c1 | g1 
}

% absolute pitch
verseMelody =
\new Voice = "verseVocal"
{
  \partial 2 d4 g4   | g8 g8 ~ g4 e4 d4 | g2 g4 b4 |
   a2 a4 g4   | e8 d8 ~ d4 d4 g4 | g4 ~ g4 e2       | d1 \break
  r2 d4 g4    | g2 e4 d4         | g2 g4 b4         | a2. c4 | b4 a4 g2 |
                                                      %Note - this a2. should be a1 ~a2 (for the first two verses only)?              
                                                      %3rd verse - this a2. should be a2 a4?              
  d'4 b4 a2 ~ | a4 g4 e8 d4.      | d4 g4 g2         | e2 d2    |
  r1          
  %| e8 d8 ~          | d4 d4 g4 g4 ~    | g4 e2 d4 ~ d1 \break
  
}

chorusMelody =
\new Voice = "chorusVocal"
{
  \partial 2 a'4 g4 | a4 d4 d2 ~ | d2 r2 | r1 | 
           r2 a4 g4 | a4 d4 d2 ~ | d2 r2 | r1 |
  r2 d4 b4 a2 | a4 g4  e8 d8 ~ d4 | d4 g4 g2 | e4 d4 d2 
  r1          
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
	  		\partial 2 " Go-"4 "d's"4 "given"2 "u-"4 "s"4 years2 "o-"4 "f"4 "hap-"2 "piness"2
	  		"here;"2 "no-"4 "w"4 "we"2 "must"2 part1
			" "2 "A-"4 "nd"4 | as2 "th-"4 "e"4 "an-"2 "ge-"4 "ls"4 come2. and4 call4 for4 you2
			"Th-"4 "e"4 pangs2 " "4 of4 "gri-"8 "ef"4. "tu-"4 "g"4 at2 my2 heart2 \skip1
	  		}
  }

  %\new Lyrics  \lyricsto verseVocal 
  \new Lyrics  
  {
  \lyricmode
	  { \set stanza = "2. "
	  \partial 2 Oh4 the4 days2 will4 be4 "emp-"2 "ty,"4 the4 nights2 "..."4 so4 "lo-"8 "ng"4. "with-"4
	out4 you2 my2 love1
    " "2 "A-"4 "nd"4 | as2 "Go-"4 "d"4 "calls"2 " "4 "for"4 you2. 
    "I'm"4 left4 "a-"4 "lone"2
	"Bu-"4 "t"4 we2. will4 "mee-"8 "t"4. "i-"4 "n"4 heaven2 "a-"4 "bove"2 \skip1
	  }
  }
  
  \new Lyrics  
  {
  \lyricmode
	  { \set stanza = "3. "
	  \partial 2 "Fo-"4 "nd"4 mem'-2 ries4 "I'll"4 "keep"2 "of"4 the4 "hap-"2. "py"4 "wa-"8 "ys"4. "that"4
	on4 earth2 we2 trod1
    " "2 "A-"4 "nd"4 | when2 "I"2 "come"2 "we"4 "will"4 walk2 "ha-"4 "nd"4
     "i-"4 "n"4 "hand"2
	"A-"4 "s"4 one2. in4 "heav-"8 "en"4. "in"4 "the"4 family2 "of"4 "god"2 \skip1
	  }
  }
>>

\break
chorusLyrics = 

  \new Lyrics  
  {
  \lyricmode {
	  		\partial 2 Oh4 my4 "da-"4 "r-"4 "ling"2 " "2 " "1 " "2 " "2 
	  		        "m-"4 "y"4 "da-"4 "r-"4 "ling"2 " "2 " "1 " "2 " "2
			My4 heart4 breaks2 as4 you4 take2
			"Yo-"4 "ur"4 "lone"2 "jou-"4 "r-"4 "ney"1
	  		}
  }


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
	
	\new ChordNames 
	{
		%\with { midiInstrument = #"acoustic guitar (nylon)" }
		{
	    	%\introChords
			\transpose g e
		    \verseChords
		    \chorusChords
		}	
	}

	\new Voice = "vocal"
	{
		\tempo "Andante - 1.53 Hz " 4 = 92
		%\tempo "Andante " 4 = 92
		%\markup { (1.53 Hz) }
		\relative c'
		\transpose g e'
		{
			\numericTimeSignature
			\time 4/4
	  		%\introMelody
			\repeat volta 3 
			{
				%\new Staff = "melodyStaff"
				{
					\key g \major	
				    \set Staff.midiInstrument = #"ocarina"
					%\numericTimeSignature
					%\time 4/4
					{
					    \verseMelody
					}
				}
			}
			\break
			{
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

  \layout { indent = 0.0\cm }
  \midi {}
} 

% ****************************************************************
% end ly snippet
% ****************************************************************