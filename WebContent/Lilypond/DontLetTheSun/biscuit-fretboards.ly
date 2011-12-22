% add FretBoards for the Biscuit
%   Note: 'Biscuit' tuning for tenor ukulele
%         Open G; low g in the bass
\version "2.14.0"

%Define tuning for each string, in # of semitones above middle c
%biscuitTuning = #`(19 14 11 7)
%Define tuning for each string, in terms of 'pitch'
\makeStringTuning #'biscuitTuning <g' d' b g>

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
\storePredefinedDiagram #default-fret-table \chordmode {g}
                        #biscuitTuning
                        #"7-1;8-2;9-3;7-1;"
\storePredefinedDiagram #default-fret-table \chordmode {c}
                        #biscuitTuning
                        #"o;1-2;2-3;o;"
\storePredefinedDiagram #default-fret-table \chordmode {d}
                        #biscuitTuning
                        #"2-1;3-2;4-3;2-1;"
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

% end of include file /BiscuitFretboard.ly


