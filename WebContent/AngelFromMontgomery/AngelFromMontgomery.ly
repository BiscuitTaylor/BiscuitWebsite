%{
Transcribed by Biscuit
===================
%}

\version "2.14.1"  % necessary for upgrading to future LilyPond versions.
date = #(strftime "%Y.%m.%d" (localtime (current-time)))
hour = #(strftime "%H:%M" (localtime (current-time)))
%timeAndDate = { "on: " \date "at "\hour}
\header{
  title = "Angel from Montgomery"
  composer = "John Prine"
  tagline = \markup 
  {
  	"Transcribed by Biscuit on: " \date "at " \hour 
  	"; engraved by LilyPond" #(ly:export (lilypond-version))
  }
}

%\include ../fretboards/biscuit-fretboards.ly

verseChords =
{
	\chordmode
	{
		g1 | c1 | g1 | c1 |
		g1 | c1 | \time 3/4	d2. | \time 4/4 g1 |
		g1 | c1 | g1 | c1 |
		g1 | c1 | \time 3/4	d2. | \time 4/4 g1 | 
	}
}

verseMelody =
\new Voice = "verseVocal"
{
  r4 b8 b8 ~ b a8 g8 a8 | g4 r4 r2  | r4 b8 b8 ~ b a g a | g2 r2 | \break
  r8 d8 b'8 b8 (b a8) g8 g8 |  a8 g4. r2  | \time 3/4 b4 g8 g8 ~ g4 | \time 4/4 g2  r2 |  \break
  r4 d8 b'8 ~ b a8 g8 a8 | g4 r4 r2  | r8 d8 b'8 b8 ~ b a8 g8 a8 | g2 r2 |  \break
  r8 b8 b b ~ b b b a ~| a8 g8 ~ g4 r4 a8 b8 | \time 3/4 g4 g4 e8  g8 ~ | \time 4/4 g2 r2
}

verseLyrics = 
<<
\new Lyrics  
\lyricsto verseVocal 
{
	I am an old wo -- | man | named aft -- er my mo -- | ther |
	my old man is a -- | no -- ther | child that's grown | old |
	If dre -- ams were light -- ning, | and thun -- der were de -- si -- re |
	This old house would -- a burnt | down a lo | ng time a -- go 
}
\new Lyrics  
\lyricsto verseVocal 
{
	\set stanza = "2. "
	When I was a young | girl, | "well I" had me a cow -- | boy |
	He weren't mu -- ch to | look "at just a" | \time 3/4 free ram -- blin' | \time 4/4 man |
	But that was a long | time, | and no mat -- ter how | I try |
	The ye -- \skip 8 ars just flow | by "like a" | brok -- en down dam 
}
\new Lyrics  
\lyricsto verseVocal
{
	 \set stanza = "3. "
	There's flies in the kit -- | chen, | I can hear 'em there | buzzin' |
	And I a -- in't done  | no -- "thin' since I" | woke up ~ to- | day |
	How the hell can a | person | go to work in the | morn -- ing |
	And come home in the  | eve -- ning "and have" | noth -- in' to say 
}
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
chorusChords =
\chordmode
{
g1 | f1 | c1 | g1 |
g1 | f1 | c2. | g1
g1 | f1 | c1 | g1 |
g1 | f1 | c2. | g1 |
}

chorusMelody =
\new Voice = "chorusVocal"
{
  \numericTimeSignature
  r4 b4 a4 g8 a8 ~ | a4 f2 r8 f8| g2 b8 (g8) g8 b8 ~| b8 g4. r2 | \break
  r4 b4 a4 g8 a8 ~ | f2 r4 g8 g8 | \time 3/4 b4 d4 b8 a8 ~| \time 4/4 g2 r2  \break
  r4 b4 a4 g8 a8 ~ | a4 a2 r8 e8 | g4 g8 b8 ~ b4 a4 | b8 (g4.) r2 | \break
  r8 d8 e8 b'8 ~ b a8 g4 | a8 g8 ~ g g8 g8 ~ f8 d8 b'8 ~ |
	\time 3/4 g4 g4 e8 g8 ~ |
	\numericTimeSignature
	\time 4/4 g4 r4 r2
}

chorusLyrics = 
{
	\new Lyrics  
	\lyricsto chorusVocal 
	{
		"Make me" an an- | gel that | flies from Mont- | gom -- ery |
		Make me a poster | of an | old ro -- de -- o |
		just give me one | thing that | I can hold on | to |
		To be -- lieve in this | liv -- ing is just a hard | way to | go
	}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score
{
<<
	\new ChordNames 
	{
		\verseChords
		\chorusChords
	}

	\new Voice = "vocal"
	{
		\tempo "Moderately (1.83 Hz) " 4 = 110
		\relative g'
		{
			\numericTimeSignature
			%\time 4/4
			\repeat volta 3
			{
				\key c \major
				\set Staff.midiInstrument = #"ocarina"
				
				\verseMelody
				\break
				\bar "||"
				\chorusMelody
			}
		}
	}

	%Lyrics
	{
		\verseLyrics
		% Why does lilypond not start the chorusLyrics in the right place?
		% If you remove the verse entirely, then the chorus looks perfect.
        %  Put the verse in front, and the chorus is fucked.
        % Try putting lyrics and chorus in seperate scores?
        % Or, try removing the 3/4 measure to see if that's the culprit.
		\chorusLyrics
	}
>>
\layout { }
\midi { }
}
%{
\score
{
<<
	\new ChordNames 
	{
%		\verseChords
		\chorusChords
	}

	\new Voice = "vocal"
	{
		%\tempo "Andante (1.53 Hz) " 4 = 92
		\relative g'
		{
			%\numericTimeSignature
			%\time 4/4
			\repeat volta 3
			{
				\key c \major
				\set Staff.midiInstrument = #"ocarina"
				
%				\verseMelody
%				\break
%				\bar "||"
				\chorusMelody
			}
		}
	}

	%Lyrics
	{
%		\verseLyrics
		% Why does lilypond not start the chorusLyrics in the right place?
		% If you remove the verse entirely, then the chorus looks perfect.
        %  Put the verse in front, and the chorus is fucked.
        % Try putting lyrics and chorus in seperate scores?
        % Or, try removing the 3/4 measure to see if that's the culprit.
		\chorusLyrics
	}
>>

\layout { }
\midi { }
%}
%}


