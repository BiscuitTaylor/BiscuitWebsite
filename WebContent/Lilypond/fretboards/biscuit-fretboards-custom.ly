% add FretBoards for the Biscuit
%   Note: 'Biscuit' tuning for tenor ukulele
%         Open G; low g in the bass
\version "2.14.0"

% OBSOLETE
                      
%TODO: use a predefined chord-shape
%and move it to the 'bar d' section (quit using the phrase 'open d')
%\storePredefinedDiagram #default-fret-table \chordmode { b:min } %b min
%                        #guitar-tuning
%%                        #"7-1;7-1;9-3;7-1;"
%                       #(offset-fret 6 (chord-shape 'e:min guitar-tuning))

%%First Inversion Minor chord shape
\addChordShape #'firstMinorChordShape #biscuitTuning #"1-1-(1-1;1-1;3-3;1-1-);"
\storePredefinedDiagram #default-fret-table
                        \chordmode { b:min }
                        #biscuitTuning
                        %#'(offset-fret 6 (chord-shape 'firstMinorChordShape biscuitTuning))
                        #"7-1;7-1;9-3;7-1;"

\addChordShape #'secondMajorChordShape #biscuitTuning #"1-1-(1-1;2-2;3-3;1-1-);"
\addChordShape #'cis #biscuitTuning #"1-1;2-2;3-3;1-1;"
\addChordShape #'rootMinorChordShape #biscuitTuning #"2-2;1-1;2-3;2-4;"
%\addChordShape #'rootMajorChordShape #biscuitTuning #"1-1-(1-1;1-1;1-1;1-1-);"
\addChordShape #'rootMajorChordShape #biscuitTuning #"1-1;1-1;1-1;1-1;"

                        
% Alternate Fretboard Tables
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
                        #"o;1-2;3-4;2-3;"
\storePredefinedDiagram #custom-fretboard-table-open-g
						\chordmode {c}
                        #biscuitTuning
                        #"o;1-2;2-3;o;"
\storePredefinedDiagram #custom-fretboard-table-open-g
						\chordmode {e:min}
                        #biscuitTuning
                        #"o;o;2-2;o;"
\storePredefinedDiagram #custom-fretboard-table-open-g
						\chordmode {d}
                        #biscuitTuning
                        #"2-1;3-2;4-3;2-1;"

\storePredefinedDiagram #custom-fretboard-table-open-g
						\chordmode {b:min}
                        #biscuitTuning
                        #"4-2;3-1;4-3;4-3;"
}

%TODO:  extract custom-fretboard-table-open-e to its own include file
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
						\chordmode {a''}
                        #biscuitTuning
                        #"9-1;10-2;11-3;9-1;"
\storePredefinedDiagram #custom-fretboard-table-open-e
						\chordmode {cis'':min}
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
\storePredefinedDiagram #default-fret-table \chordmode {cis'':min} %c# min
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
						\chordmode {d'}
                        #biscuitTuning
                        #"11-3;10-2;12-4;9-1;"
\storePredefinedDiagram #default-fret-table
                        \chordmode {b:7}
                        #biscuitTuning
                        #"11-1;12-2;13-3;14-4;"


%TODO:  extract custom-fretboard-table-open-g to its own include file
%\storePredefinedDiagram #default-fret-table \chordmode {g}
%                        #biscuitTuning
%                        #"o;o;o;o;"
%\storePredefinedDiagram #default-fret-table \gMajor
\storePredefinedDiagram #default-fret-table 
						\chordmode {g'}
                        #biscuitTuning
                        #"7-1;8-2;9-3;7-1;"
%\storePredefinedDiagram #default-fret-table 
%						\chordmode {c,}
%                        #biscuitTuning
%                        #"o;1-2;2-3;o;"
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


