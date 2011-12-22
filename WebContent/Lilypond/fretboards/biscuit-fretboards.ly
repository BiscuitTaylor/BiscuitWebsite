% add FretBoards for the Biscuit
%   Note: 'Biscuit' tuning for tenor ukulele
%         Open G; low g in the bass
\version "2.14.0"

%Define tuning for each string, in # of semitones above middle c
%biscuitTuning = #`(19 14 11 7)
%Define tuning for each string, in terms of 'pitch'
\makeStringTuning #'biscuitTuning <g' d' b g>


biscuitCustomFretboards =
{
  \set stringTunings = #biscuitTuning
  \override FretBoard
    #'(fret-diagram-details string-count) = #'4
  % Use upercase Roman numerals for the fret# notation rather than the hard-to-read default lowercase Roman
%  \override FretBoard
%    #'(fret-diagram-details number-type) = #'roman-upper
  % Make the fret# notation a little larger than the puny default 0.5
  \override FretBoard
    #'(fret-diagram-details fret-label-font-mag) = #'0.7
  % Move the fret# up a little, putting it between the fret and the finger-dot
  \override FretBoard
    #'(fret-diagram-details fret-label-vertical-offset) = #'-0.3 
  % Put fingering numbers inside the dots
  \override FretBoard
    #'(fret-diagram-details finger-code) = #'in-dot
  %\override #'(fret-diagram-details . (
  %               (number-type . roman-upper)
  %              (fret-label-font-mag . 0.6)
  %              ))
}

%{
%gMajor = { <g\4 b\3 d'\2 g'\1> }
gMajor = { <d'\4 g'\3 b'\2 d''\1> }
cMajor = { <g\4 c\3 e'\2 g'\1> }
dMajor = { <a\4 d'\3 fis' \2 a'\1> }
fMajor = { <c\4 f'\3 a'\2 d''\1> }
aMinor = { <c\4 e'\3 a'\2 c'\1> }
eMinor = { <e'\4 g'\3 b''\2 e''\1> }
cMajSeven = { <c\4 e'\3 g'\2 b'\1> }
fMajSeven = { <c\4 f'\3 a'\2 e''\1> }
%}

%\storePredefinedDiagram #default-fret-table \chordmode {g}
%                        #biscuitTuning
%                        #"o;o;o;o;"
%\storePredefinedDiagram #default-fret-table \gMajor
\storePredefinedDiagram #default-fret-table 
						\chordmode {g}
                        #biscuitTuning
                        #"7-1;8-2;9-3;7-1;"
\storePredefinedDiagram #default-fret-table 
						\chordmode {c}
                        #biscuitTuning
                        #"o;1-2;2-3;o;"
%\storePredefinedDiagram #default-fret-table 
%						\chordmode {d}
%                        #biscuitTuning
%                        #"2-1;3-2;4-3;2-1;"
\storePredefinedDiagram #default-fret-table 
                        \chordmode {d}
                        #biscuitTuning
                        #"7-1;7-1;7-1;7-1;"
\storePredefinedDiagram #default-fret-table \chordmode {f}
                        #biscuitTuning
                        #"5-1;6-2;7-3;5-1;"
\storePredefinedDiagram #default-fret-table \chordmode {a:min}
                        #biscuitTuning
                        #"5-1;5-1;7-3;5-1;"
\storePredefinedDiagram #default-fret-table \chordmode {e:min}
                        #biscuitTuning
                        #"9-2;8-1;9-3;9-4;"
\storePredefinedDiagram #default-fret-table \chordmode {c:maj7}
                        #biscuitTuning
                        #"5-2;5-3;5-4;4-1;"
\storePredefinedDiagram #default-fret-table \chordmode {f:maj7}
                        #biscuitTuning
                        #"5-1;6-2;7-3;9-4;"
                        
\storePredefinedDiagram #default-fret-table \chordmode {b:min7}
                        #biscuitTuning
                        #"11-1;12-2;12-2;14-3;"
\storePredefinedDiagram #default-fret-table \chordmode {a}
                        #biscuitTuning
                        #"9-1;10-2;11-3;9-1;"
\storePredefinedDiagram #default-fret-table \chordmode {b}
                       #biscuitTuning
                        #"11-1;12-2;13-3;11-1;"
\storePredefinedDiagram #default-fret-table \chordmode {b:7}
                        #biscuitTuning
                        #"11-4;10-3;9-2;8-1;"
\storePredefinedDiagram #default-fret-table \chordmode {e}
                        #biscuitTuning
                        #"9-1;9-1;9-1;9-1;"
\storePredefinedDiagram #default-fret-table \chordmode {e:7}
                        #biscuitTuning
                        #"7-1;9-2;9-2;9-2;"
\storePredefinedDiagram #default-fret-table \chordmode {fis:min} %f# min
                        #biscuitTuning
                        #"11-2;10-1;11-3;11-3;"
\storePredefinedDiagram #default-fret-table \chordmode {cis:7} %c# 7
                        #biscuitTuning
                        #"13-4;12-3;11-2;10-1;"
\storePredefinedDiagram #default-fret-table \chordmode {cis:min} %c# min
                        #biscuitTuning
                        #"9-1;9-1;11-3;9-1;"
                        
%TODO: use a predefined chord-shape
%and move it to the 'bar d' section (quit using the phrase 'open d')
%\storePredefinedDiagram #default-fret-table \chordmode {b:min} %b min
%                        #guitar-tuning
%%                        #"7-1;7-1;9-3;7-1;"
%                       #(offset-fret 6 (chord-shape 'e:min guitar-tuning))

%%kneelingCrane chord shape
\addChordShape #'kneelingCraneChordShape #biscuitTuning #"1-1-(1-1;1-1;3-3;1-1-);"
\storePredefinedDiagram #default-fret-table
                        \chordmode {b:min}
                        #biscuitTuning
                        %#'(offset-fret 6 (chord-shape 'kneelingCraneChordShape biscuitTuning))
                        #"7-1;7-1;9-3;7-1;"

%%HandShadowDuck chord shape                       
%\addChordShape #'cis #biscuitTuning #"1-1-(1-1;2-2;3-3;1-1-)"
                        
% Alternate Fretboard Tables
%{
%\include "predefined-guitar-fretboards.ly"

% Make a blank new fretboard table
#(define custom-fretboard-table-one (make-fretboard-table))

% Make a new fretboard table as a copy of default-fret-table
#(define custom-fretboard-table-two (make-fretboard-table default-fret-table))

% Add a chord to custom-fretboard-table-one
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{c}
                        #guitar-tuning
                        "3-(;3;5;5;5;3-);"

% Add a chord to custom-fretboard-table-two
\storePredefinedDiagram #custom-fretboard-table-two
                        \chordmode{c}
                        #guitar-tuning
                        "x;3;5;5;5;o;"
%}
%{
     % add a new chord shape

     %\addChordShape #'bar_aflat #biscuit-tuning #"1-1-(1-1;1-1;1-1;1-1;"
     \addChordShape #'aes #biscuitTuning #"1-1-(1-1;1-1;1-1;1-1-);"

     % add some new chords based on the bar chord shape

     \storePredefinedDiagram \chordmode {aes}
                             #biscuitTuning
                             #(chord-shape 'aes biscuitTuning)
     \storePredefinedDiagram \chordmode {a}
                             #guitar-tuning
                             #(offset-fret 1 (chord-shape 'aes biscuitTuning))
     \storePredefinedDiagram \chordmode {bes}
                             #guitar-tuning
                             #(offset-fret 2 (chord-shape 'aes biscuitTuning))
%}

{
% Make a blank new fretboard table
%#(define custom-fretboard-table-one (make-fretboard-table))

% Make a new fretboard table as a copy of default-fret-table
#(define custom-fretboard-table-open-g (make-fretboard-table default-fret-table))

% Add a chord to custom-fretboard-table-open-g
\storePredefinedDiagram #custom-fretboard-table-open-g
						\chordmode {g}
                        #biscuitTuning
                        #"o;o;o;o;"

% Add a chord to custom-fretboard-table-open-g
\storePredefinedDiagram #custom-fretboard-table-open-g
						\chordmode {f}
                        #biscuitTuning
                        #"0-1;1-2;3-4;2-3;"
\storePredefinedDiagram #custom-fretboard-table-open-g
						\chordmode {c}
                        #biscuitTuning
                        #"o;1-2;2-3;o;"
\storePredefinedDiagram #custom-fretboard-table-open-g
						\chordmode {e:min}
                        #biscuitTuning
                        #"o;o;2-2;o;"
\storePredefinedDiagram #custom-fretboard-table-open-g
						\chordmode {b:min}
                        #biscuitTuning
                        #"4-2;3-1;4-3;4-3;"
}

{
% Make a blank new fretboard table
%#(define custom-fretboard-table-one (make-fretboard-table))

% Make a new fretboard table as a copy of default-fret-table
#(define custom-fretboard-table-open-e (make-fretboard-table default-fret-table))
% copying default-fret-table doesn't seem to work...
%#(define custom-fretboard-table-open-e (make-fretboard-table custom-fretboard-table-open-g))

% Add a chord to custom-fretboard-table-open-e
\storePredefinedDiagram #custom-fretboard-table-open-e
						\chordmode {e}
                        #biscuitTuning
                        #"9-1;9-1;9-1;9-1;"

% Add a chord to custom-fretboard-table-open-e
\storePredefinedDiagram #custom-fretboard-table-open-e
						\chordmode {d}
                        #biscuitTuning
                        #"9-1;10-2;12-4;11-3;"
\storePredefinedDiagram #custom-fretboard-table-open-e
						\chordmode {a}
                        #biscuitTuning
                        #"9-1;10-2;11-3;9-1;"
\storePredefinedDiagram #custom-fretboard-table-open-e
						\chordmode {cis:min}
                        #biscuitTuning
                        #"9-1;9-1;11-3;9-1;"
\storePredefinedDiagram #custom-fretboard-table-open-e
						\chordmode {gis:min}
                        #biscuitTuning
                        #"13-2;12-1;13-3;13-3;"
\storePredefinedDiagram #custom-fretboard-table-open-e
                        \chordmode {fis:min} %f# min
                        #biscuitTuning
                        #"11-2;10-1;11-3;11-3;"
%Why was the C# minor not inherited from default-fretboard-table?
\storePredefinedDiagram #default-fret-table \chordmode {cis:min} %c# min
                        #biscuitTuning
                        #"9-1;9-1;11-3;9-1;"

\storePredefinedDiagram #custom-fretboard-table-open-e
						\chordmode {c}
                        #biscuitTuning
                        #"5-1;5-1;5-1;5-1;"

}

% Make a new fretboard table as a copy of custom-fretboard-table-open-e
#(define custom-fretboard-table-open-e-alternate (make-fretboard-table custom-fretboard-table-open-e))
% Add a chord to custom-fretboard-table-open-e-alternate
\storePredefinedDiagram #custom-fretboard-table-open-e-alternate
						\chordmode {d}
                        #biscuitTuning
                        #"11-3;10-2;12-4;9-1;"
\storePredefinedDiagram #default-fret-table
                        \chordmode {b:7}
                        #biscuitTuning
                        #"11-1;12-2;13-3;14-4;"


%\storePredefinedDiagram #default-fret-table \chordmode {g}
%                        #biscuitTuning
%                        #"o;o;o;o;"
%\storePredefinedDiagram #default-fret-table \gMajor
\storePredefinedDiagram #default-fret-table 
						\chordmode {g}
                        #biscuitTuning
                        #"7-1;8-2;9-3;7-1;"
\storePredefinedDiagram #default-fret-table 
						\chordmode {c}
                        #biscuitTuning
                        #"o;1-2;2-3;o;"
%\storePredefinedDiagram #default-fret-table 
%						\chordmode {d}
%                        #biscuitTuning
%                        #"2-1;3-2;4-3;2-1;"
\storePredefinedDiagram #default-fret-table 
                        \chordmode {d}
                        #biscuitTuning
                        #"7-1;7-1;7-1;7-1;"
\storePredefinedDiagram #default-fret-table \chordmode {f}
                        #biscuitTuning
                        #"5-1;6-2;7-3;5-1;"
\storePredefinedDiagram #default-fret-table \chordmode {a:min}
                        #biscuitTuning
                        #"5-1;5-1;7-3;5-1;"
\storePredefinedDiagram #default-fret-table \chordmode {e:min}
                        #biscuitTuning
                        #"9-2;8-1;9-3;9-4;"
\storePredefinedDiagram #default-fret-table \chordmode {c:maj7}
                        #biscuitTuning
                        #"5-2;5-3;5-4;4-1;"
\storePredefinedDiagram #default-fret-table \chordmode {f:maj7}
                        #biscuitTuning
                        #"5-1;6-2;7-3;9-4;"
                        
\storePredefinedDiagram #default-fret-table \chordmode {b:min7}
                        #biscuitTuning
                        #"11-1;12-2;12-2;14-3;"
\storePredefinedDiagram #default-fret-table \chordmode {a}
                        #biscuitTuning
                        #"9-1;10-2;11-3;9-1;"
\storePredefinedDiagram #default-fret-table \chordmode {b}
                        #biscuitTuning
                        #"11-1;12-2;13-3;11-1;"
\storePredefinedDiagram #default-fret-table \chordmode {e}
                        #biscuitTuning
                        #"9-1;9-1;9-1;9-1;"
\storePredefinedDiagram #default-fret-table \chordmode {e:7}
                        #biscuitTuning
                        #"7-1;9-2;9-2;9-2;"
\storePredefinedDiagram #default-fret-table \chordmode {fis:min} %f# min
                        #biscuitTuning
                        #"11-2;10-1;11-3;11-3;"
\storePredefinedDiagram #default-fret-table \chordmode {cis:7} %c# 7
                        #biscuitTuning
                        #"13-4;12-3;11-2;10-1;"

% end of include file /BiscuitFretboard.ly


