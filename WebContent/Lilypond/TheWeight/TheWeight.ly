\version "2.16.1"

date = #(strftime "%Y.%m.%d" (localtime (current-time)))
hour = #(strftime "%H:%M" (localtime (current-time)))
\header {
  title = "The Weight"
  composer = "Robbie Robertson"
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
\include "../fretboards/biscuit-guitar-fretboards.ly"
% If using standard guitar fretboards,
% (see \keepWithTag at the start of the \score section)
% you can comment-out the biscuit-fretboards include. 
\include "../fretboards/biscuit-fretboards.ly"

defineMyFretboard =
<<
\tag #'StandardGuitarFretboard
{
  %Custom fretboard diagrams for guitar (E/G#, etc.)
  \biscuitCustomGuitarFretboards
}
\tag #'BiscuitUkeFretboard
{
  %define fretboard diagrams for open-g tenor ukulele
  \biscuitCustomFretboards
}
>>


verseChords = \chordmode 
{	
	%Big chord names, so old geezers can percieve them			
	\override ChordName #'font-size = #2 
	%Bold chord names, so old geezers can grok them			
	\override ChordName #'font-series = #'bold
    \set predefinedDiagramTable = #custom-fretboard-table-open-e
	a1 cis1:min  d1 a1
	a1 cis1:min  d1 a1
	a1 cis1:min  d1 a1
	a1 cis1:min  d1 a1
}

%Guitar chords for Chorus.. w/fancy bass note shit
chorusChords =  
<<
\tag #'StandardGuitarFretboard
{
	\chordmode
	{
		a2 e/gis2 d1
		%Take a load off, Fanny.
		a2 e/gis2 d1
		%Take a load for free.
		\break
		
		%\mark {\markup { \vspace #5 }
		a2 e/gis2 d1
		%Take a load off, Fanny.
		d1 d1 d1
		%And...  you put the load right on
		\break
		
		%\mark \markup { \vspace #5 }
		a2 e/gis2 fis2:min e2 d1 d1
		%me.
	}
}

%Simplified chords for ukulele
\tag #'BiscuitUkeFretboard
{
	\chordmode 
	{
		a2 e2 d1
		%Take a load off, Fanny.
		a2 e2 d1
		%Take a load for free.
		\break
		
		%\mark {\markup { \vspace #5 }
		a2 e2 d1
		%Take a load off, Fanny.
		d1 d1 d1
		%And...  you put the load right on
		\break
		
		%\mark \markup { \vspace #5 }
		a2 e2 fis2:min e2 d1 d1
		%me.
	}
}
>>

verseLyrics = 
<<
  \new Lyrics 
  {
	\lyricmode {
I_pulled_in_to1 Nazareth,_I_was1 feeling_about_half_past1 dead.1
I_just_need_some1 place_where1 I_can_lay_my1 head.1
_"Hey,_Mister,_can_you1 tell_me_where_a1 man_might_find_a1 bed?"1
He_just_grinned,1 shook_my_hand,1 _"No"_was_all_he_said.1 _1
	}
  }

  \new Lyrics 
  { \lyricmode
  {\set stanza = "2. "
I_picked1 up_my_bag.__I_went1 looking_for_a_place_to1 hide.1
When_I_saw1 Carmen_and_the_devil1 walking_side_by1 side.1
I_said,_"Hey,1 Carmen,_come1 on._Let's_go_down-1 town."1
She_said,_"I1 got_to_go,_but_my1 friend_can_stick_around."1 _1
  }
  }
  
  \new Lyrics 
  { \lyricmode
  {\set stanza = "3. "
Go_down,_Miss1 Moses,_there's1 nothing_you_can1 say.1
It's_just_old1 Luke,_and_Luke's1 waiting_on_the_judgement1 day.1
_"Well,_Luke,_my1 friend,_what_a-1 bout_young_Anna1 Lee?"1
He_said,_"Do_me_a1 favor,_son,_won't_you1 stay_and_keep_Anna_Lee1 company."1
  }
  }
  
  \new Lyrics 
  { \lyricmode
  {\set stanza = "4. "
Crazy_Chester1 followed_me_and_he1 caught_me_in_the1 fog.1
He_said,_"I_will_ fix_your_rack,_if1 you'll_take_Jack_my1 dog."1
I_said,_"Wait_a_minute,1 Chester._You_know1 I'm_a_peaceful1 man."1
He_said,_"That's_o-1 kay,_boy.__Won't_you1 feed_him_when_you1 can?"1
  }
  }

  \new Lyrics 
  { \lyricmode
  {\set stanza = "5. "
Get_your1 Canonball_now,_to1 take_me_down_the1 line.1
My_bag_is1 sinking_low,_and_I1 do_believe_it's1 time
To_get_back_to_Miss1 Fanny.__You_know1 she's_the_only1 one1
Who_sent_me1 here_with_her_re-1 gards_for_every-1 one.1
  }
  }
>>

chorusLyrics = 
{
	\new Lyrics
	%\with {\override VerticalAxisGroup #'minimumVerticalExtent = #'(6.0 . 6.0)} 	%trying to increase vertical spacing... doesn't work	
 	\lyricmode
	{
Take_a_load_off,1 Fanny.1
Take_a_load_for1 free.1
Take_a_load_off,1 Fanny.1
And...1  _...you1 put_the_load_right_on1 me.1
	}
}


chorusMelody =
\new Voice = "chorusVocal"
{
	%TODO - add a staff for the fancy vocal harmony part here
	%"and..."
	e8 e16 e16 e8 d8 e16 e16 e16 g8. |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score
{
	%keep only sections tagged BiscuitUkeFretboard
    %\keepWithTag #'BiscuitUkeFretboard
	%ignore all sections tagged StandardGuitarFretboard
    %\removeWithTag #'StandardGuitarFretboard 
    \keepWithTag #'StandardGuitarFretboard
<<
    \new FretBoards 
	{
        \defineMyFretboard
		{
			\transpose a g
		    \verseChords
			\transpose a g
			\chorusChords
		}
	}

	\new ChordNames 
	{
		% \with { midiInstrument = #"acoustic guitar (nylon)" }
		{
			\transpose a g
		    \verseChords
			\transpose a g
			\chorusChords
		}	
	}
  
	%Lyrics
	\new Lyrics 
	{
		%TODO - add coda here
		\verseLyrics
		\pageBreak
		%TODO - add D.S. al coda
		\chorusLyrics
		\bar "||" %seems to have no effect here.   I guess you can only have bar markers on a Staff
	}

	% Enable this to write the notes of each chord on a new staff below the melody staff
%	\new Staff
%	{
%		\repeat unfold 16 {\skip 1} % verse is 16 bars long
%	 	\chorusChords
%	 }
>>

  \layout { indent = 0.0\cm }
  \midi {}
} 

% ****************************************************************
% end ly snippet
% ****************************************************************