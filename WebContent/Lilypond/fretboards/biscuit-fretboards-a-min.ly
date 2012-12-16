% add FretBoards for the Biscuit
%   Note: 'Biscuit' tuning for tenor ukulele
%         Open G; low g in the bass
\version "2.16.0"

\include "biscuit-fretboards-style.ly"
\include "biscuit-fretboards-chordshapes.ly"

%%%%%%%%%%%%%% A min %%%%%%%%%%%%%%%%%
% A minor - root position
\storePredefinedDiagram #default-fret-table \chordmode { a:min } 
                        #biscuitTuning
                        #(offset-fret 11 (chord-shape 'rootMinorChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { a:min7 } 
                        #biscuitTuning
                        #(offset-fret 11 (chord-shape 'rootMin7ChordShape biscuitTuning))

% A minor - first inversion
\storePredefinedDiagram #default-fret-table \chordmode { a'':min }
                        #biscuitTuning
                        #(offset-fret 3 (chord-shape 'firstMinorChordShape biscuitTuning))
                        %#"7-1;7-1;9-3;7-1;"
\storePredefinedDiagram #default-fret-table \chordmode { a'':min7 } 
                        #biscuitTuning
                        #(offset-fret 3 (chord-shape 'firstMin7ChordShape biscuitTuning))

% A minor - second inversion
\storePredefinedDiagram #default-fret-table \chordmode { a''':min } 
                        #biscuitTuning
                        #(offset-fret 5 (chord-shape 'secondMinorChordShape biscuitTuning))
                        %#"1-1;2-2;3-3;1-1;"
\storePredefinedDiagram #default-fret-table \chordmode { a''':min7 } 
                        #biscuitTuning
                        #(offset-fret 5 (chord-shape 'secondMin7ChordShape biscuitTuning))


% end of include file /biscuit-fretboards-a-min.ly


