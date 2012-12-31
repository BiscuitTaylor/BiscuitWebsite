% add FretBoards for the Biscuit
%   Note: 'Biscuit' tuning for tenor ukulele
%         Open G; low g in the bass
\version "2.16.0"

\include "biscuit-fretboards-style.ly"
\include "biscuit-fretboards-chordshapes.ly"

%%%%%%%%%%%%%% G %%%%%%%%%%%%%%%%%
% G - root position
\storePredefinedDiagram #default-fret-table \chordmode { g }
                        #biscuitTuning
                        #(offset-fret 6 (chord-shape 'rootMajorChordShape biscuitTuning))
						% oops;  -1  doesn't seem to work as an offset.  Damn.
                        % Well, just hard-code it instead.
\storePredefinedDiagram #default-fret-table \chordmode { g:7 } 
                        #biscuitTuning
                        #(offset-fret 6 (chord-shape 'rootDom7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { g:maj7 } 
                        #biscuitTuning
                        #(offset-fret 6 (chord-shape 'rootMaj7ChordShape biscuitTuning))

\storePredefinedDiagram #default-fret-table \chordmode { g:min } 
                        #biscuitTuning
                        #(offset-fret 6 (chord-shape 'rootMinorChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { g:min7 } 
                        #biscuitTuning
                        #(offset-fret 6 (chord-shape 'rootMin7ChordShape biscuitTuning))

% G minor - root position
\storePredefinedDiagram #default-fret-table \chordmode { g:min }
                        #biscuitTuning
                        #(offset-fret 6 (chord-shape 'rootMinorChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { g:min7 } 
                        #biscuitTuning
                        #(offset-fret 6 (chord-shape 'rootMin7ChordShape biscuitTuning))

% G - first inversion
\storePredefinedDiagram #default-fret-table \chordmode { g'' }
                        #biscuitTuning
                        #(offset-fret 9 (chord-shape 'firstMajorChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { g'':7 } 
                        #biscuitTuning
                        #(offset-fret 9 (chord-shape 'firstDom7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { g'':maj7 } 
                        #biscuitTuning
                        #(offset-fret 9 (chord-shape 'firstMaj7ChordShape biscuitTuning))

% G minor - first inversion
\storePredefinedDiagram #default-fret-table \chordmode { g'':min }
                        #biscuitTuning
                        #(offset-fret 9 (chord-shape 'firstMinorChordShape biscuitTuning))
                        %#"7-1;7-1;9-3;7-1;"
\storePredefinedDiagram #default-fret-table \chordmode { g'':min7 } 
                        #biscuitTuning
                        #(offset-fret 9 (chord-shape 'firstMin7ChordShape biscuitTuning))

% G - second inversion
\storePredefinedDiagram #default-fret-table \chordmode { g''' } 
                        #biscuitTuning
                        #(offset-fret 10 (chord-shape 'secondMajorChordShape biscuitTuning))
                        %#"1-1;2-2;3-3;1-1;"
\storePredefinedDiagram #default-fret-table \chordmode { g''':7 } 
                        #biscuitTuning
                        #(offset-fret 10 (chord-shape 'secondDom7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { g''':maj7 } 
                        #biscuitTuning
                        #(offset-fret 10 (chord-shape 'secondMaj7ChordShape biscuitTuning))

% G minor - second inversion
\storePredefinedDiagram #default-fret-table \chordmode { g''':min } 
                        #biscuitTuning
                        #(offset-fret 10 (chord-shape 'secondMinorChordShape biscuitTuning))
                        %#"1-1;2-2;3-3;1-1;"
\storePredefinedDiagram #default-fret-table \chordmode { g''':min7 } 
                        #biscuitTuning
                        #(offset-fret 10 (chord-shape 'secondMin7ChordShape biscuitTuning))


% end of include file /biscuit-fretboard-e.ly


