% add FretBoards for the Biscuit
%   Note: 'Biscuit' tuning for tenor ukulele
%         Open G; low g in the bass
\version "2.16.1"

\include "biscuit-fretboards-style.ly"
\include "biscuit-fretboards-chordshapes.ly"

%%%%%%%%%%%%%% C sharp %%%%%%%%%%%%%%%%%
% C sharp - root position
\storePredefinedDiagram #default-fret-table \chordmode { cis } 
                        #biscuitTuning
                        #(offset-fret 3 (chord-shape 'rootMajorChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { cis:7 } 
                        #biscuitTuning
                        #(offset-fret 3 (chord-shape 'rootDom7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { cis:maj7 } 
                        #biscuitTuning
                        #(offset-fret 3 (chord-shape 'rootMaj7ChordShape biscuitTuning))

% C sharp minor - root position
\storePredefinedDiagram #default-fret-table \chordmode { cis:min } 
                        #biscuitTuning
                        #(offset-fret 3 (chord-shape 'rootMinorChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { cis:min7 } 
                        #biscuitTuning
                        #(offset-fret 3 (chord-shape 'rootMin7ChordShape biscuitTuning))

% C sharp - first inversion
\storePredefinedDiagram #default-fret-table \chordmode { cis' } 
                        #biscuitTuning
                        #(offset-fret 6 (chord-shape 'firstMajorChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { cis':7 } 
                        #biscuitTuning
                        #(offset-fret 6 (chord-shape 'firstDom7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { cis':maj7 } 
                        #biscuitTuning
                        #(offset-fret 6 (chord-shape 'firstMaj7ChordShape biscuitTuning))

% C sharp minor - first inversion
\storePredefinedDiagram #default-fret-table \chordmode { cis':min } 
                        #biscuitTuning
                        #(offset-fret 6 (chord-shape 'firstMinorChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { cis':min7 } 
                        #biscuitTuning
                        #(offset-fret 6 (chord-shape 'firstMin7ChordShape biscuitTuning))

% C sharp - second inversion
\storePredefinedDiagram #default-fret-table \chordmode { cis'' } 
                        #biscuitTuning
                        #(offset-fret 9 (chord-shape 'secondMajorChordShape biscuitTuning))
                        %#"1-1;2-2;3-3;1-1;"
\storePredefinedDiagram #default-fret-table \chordmode { cis'':7 } 
                        #biscuitTuning
                        #(offset-fret 9 (chord-shape 'secondDom7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { cis'':maj7 } 
                        #biscuitTuning
                        #(offset-fret 9 (chord-shape 'secondMaj7ChordShape biscuitTuning))

% C sharp minor - second inversion
\storePredefinedDiagram #default-fret-table \chordmode { cis'':min } 
                        #biscuitTuning
                        #(offset-fret 9 (chord-shape 'secondMinorChordShape biscuitTuning))
                        %#"1-1;2-2;3-3;1-1;"
\storePredefinedDiagram #default-fret-table \chordmode { cis'':min7 } 
                        #biscuitTuning
                        #(offset-fret 9 (chord-shape 'secondMin7ChordShape biscuitTuning))


% end of include file /biscuit-fretboard-c-sharp.ly


