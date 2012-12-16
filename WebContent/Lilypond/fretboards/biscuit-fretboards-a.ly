% add FretBoards for the Biscuit
%   Note: 'Biscuit' tuning for tenor ukulele
%         Open G; low g in the bass
\version "2.16.0"

\include "biscuit-fretboards-style.ly"
\include "biscuit-fretboards-chordshapes.ly"

%%%%%%%%%%%%%% A %%%%%%%%%%%%%%%%%
% A - root position
\storePredefinedDiagram #default-fret-table \chordmode { a }
                        #biscuitTuning
                        #(offset-fret 11 (chord-shape 'rootMajorChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { a:7 } 
                        #biscuitTuning
                        #(offset-fret 11 (chord-shape 'rootDom7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { a:maj7 } 
                        #biscuitTuning
                        #(offset-fret 11 (chord-shape 'rootMaj7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { a:aug }
                        #biscuitTuning
                        #(offset-fret 11 (chord-shape 'rootAugChordShape biscuitTuning))

\storePredefinedDiagram #default-fret-table \chordmode { a:min } 
                        #biscuitTuning
                        #(offset-fret 11 (chord-shape 'rootMinorChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { a:min7 } 
                        #biscuitTuning
                        #(offset-fret 11 (chord-shape 'rootMin7ChordShape biscuitTuning))

%% A minor - root position
%\storePredefinedDiagram #default-fret-table \chordmode { a:min }
%                        #biscuitTuning
%                        #(offset-fret 11 (chord-shape 'rootMinorChordShape biscuitTuning))
%\storePredefinedDiagram #default-fret-table \chordmode { a:min7 } 
%                        #biscuitTuning
%                        #(offset-fret 11 (chord-shape 'rootMin7ChordShape biscuitTuning))

% A - first inversion
\storePredefinedDiagram #default-fret-table \chordmode { a'' }
                        #biscuitTuning
                        #(offset-fret 3 (chord-shape 'firstMajorChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { a'':7 } 
                        #biscuitTuning
                        #(offset-fret 3 (chord-shape 'firstDom7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { a'':maj7 } 
                        #biscuitTuning
                        #(offset-fret 3 (chord-shape 'firstMaj7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { a'':aug }
                        #biscuitTuning
                        #(offset-fret 3 (chord-shape 'firstAugChordShape biscuitTuning))

%% A minor - first inversion
%\storePredefinedDiagram #default-fret-table \chordmode { a'':min }
%                        #biscuitTuning
%                        #(offset-fret 3 (chord-shape 'firstMinorChordShape biscuitTuning))
%                        %#"7-1;7-1;9-3;7-1;"
%\storePredefinedDiagram #default-fret-table \chordmode { a'':min7 } 
%                        #biscuitTuning
%                        #(offset-fret 3 (chord-shape 'firstMin7ChordShape biscuitTuning))

% A - second inversion
\storePredefinedDiagram #default-fret-table \chordmode { a''' } 
                        #biscuitTuning
                        #(offset-fret 5 (chord-shape 'secondMajorChordShape biscuitTuning))
                        %#"1-1;2-2;3-3;1-1;"
\storePredefinedDiagram #default-fret-table \chordmode { a''':7 } 
                        #biscuitTuning
                        #(offset-fret 5 (chord-shape 'secondDom7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { a''':maj7 } 
                        #biscuitTuning
                        #(offset-fret 5 (chord-shape 'secondMaj7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { a''':aug } 
                        #biscuitTuning
                        #(offset-fret 5 (chord-shape 'secondAugChordShape biscuitTuning))

% A minor - second inversion
%\storePredefinedDiagram #default-fret-table \chordmode { a''':min } 
%                        #biscuitTuning
%                        #(offset-fret 5 (chord-shape 'secondMinorChordShape biscuitTuning))
%                        %#"1-1;2-2;3-3;1-1;"
%\storePredefinedDiagram #default-fret-table \chordmode { a''':min7 } 
%                        #biscuitTuning
%                        #(offset-fret 5 (chord-shape 'secondMin7ChordShape biscuitTuning))


% end of include file /biscuit-fretboards-a.ly


