% add FretBoards for the Biscuit
%   Note: 'Biscuit' tuning for tenor ukulele
%         Open G; low g in the bass
\version "2.16.1"

\include "biscuit-fretboards-style.ly"
\include "biscuit-fretboards-chordshapes.ly"

%%%%%%%%%%%%%% A %%%%%%%%%%%%%%%%%
% A - root position
% don't use chord-shape here
\storePredefinedDiagram #default-fret-table \chordmode { a }
                        #biscuitTuning
                        #"2-1-(;2-1;2-1;2-1-);"
\storePredefinedDiagram #default-fret-table \chordmode { a:7 } 
                        #biscuitTuning
                        #"o;2-1-(;2-1;2-1-);"
\storePredefinedDiagram #default-fret-table \chordmode { a:maj7 } 
                        #biscuitTuning
                        #"2-2;2-3;2-4;1-1;"
\storePredefinedDiagram #default-fret-table \chordmode { a:aug }
                        #biscuitTuning
                        #"2-1-(;2-1;3-3;2-1-);"
\storePredefinedDiagram #default-fret-table \chordmode { a:sus4 }
                        #biscuitTuning
						"2-1-(;3-2;2-1;2-1-);"
\storePredefinedDiagram #default-fret-table \chordmode { a:sus2 }
                        #biscuitTuning
						"2-1;o;2-2;2-3;"
\storePredefinedDiagram #default-fret-table \chordmode { a:6 }
                        #biscuitTuning
                        #"2-1-(;2-1;4-3;2-1-);"
\storePredefinedDiagram #default-fret-table \chordmode { a:9 }
                        #biscuitTuning
                        #"2-1-(;2-1-);5-4;4-3;"

% A minor - root position
\storePredefinedDiagram #default-fret-table 
						\chordmode {a:min}
                        #biscuitTuning
                        #"2-2;1-1;2-3-(;2-3-);"
\storePredefinedDiagram #default-fret-table 
						\chordmode {a:min7}
                        #biscuitTuning
                        #"o-o;1-2;2-3-(;2-3-);"
\storePredefinedDiagram #default-fret-table 
						\chordmode {a:dim}
                        #biscuitTuning
                        #"2-3;1-1-(;1-1-)-(;2-4;"
\storePredefinedDiagram #default-fret-table 
						\chordmode {a:dim7}
                        #biscuitTuning
                        #"2-1;4-2-(;4-2-)-(;5-4;"

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
\storePredefinedDiagram #default-fret-table \chordmode { a'':sus4 }
                        #biscuitTuning
                        #(offset-fret 3 (chord-shape 'firstSus4ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { a'':sus2 }
                        #biscuitTuning
                        #(offset-fret 3 (chord-shape 'firstSus2ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { a'':6 }
                        #biscuitTuning
                        #(offset-fret 3 (chord-shape 'first6ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { a'':9 }
                        #biscuitTuning
                        #(offset-fret 3 (chord-shape 'first9ChordShape biscuitTuning))

% A minor - first inversion
\storePredefinedDiagram #default-fret-table \chordmode { a'':min }
                        #biscuitTuning
                        #(offset-fret 3 (chord-shape 'firstMinorChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { a'':min7 } 
                        #biscuitTuning
                        #(offset-fret 3 (chord-shape 'firstMin7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { a'':dim } 
                        #biscuitTuning
                        #(offset-fret 3 (chord-shape 'firstDimChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { a'':dim7 } 
                        #biscuitTuning
                        #(offset-fret 3 (chord-shape 'firstDim7ChordShape biscuitTuning))

% A - second inversion
\storePredefinedDiagram #default-fret-table \chordmode { a''' } 
                        #biscuitTuning
                        #(offset-fret 5 (chord-shape 'secondMajorChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { a''':7 } 
                        #biscuitTuning
                        #(offset-fret 5 (chord-shape 'secondDom7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { a''':maj7 } 
                        #biscuitTuning
                        #(offset-fret 5 (chord-shape 'secondMaj7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { a''':aug } 
                        #biscuitTuning
                        #(offset-fret 5 (chord-shape 'secondAugChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { a''':sus4 }
                        #biscuitTuning
                        #(offset-fret 5 (chord-shape 'secondSus4ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { a''':sus2 }
                        #biscuitTuning
                        #(offset-fret 5 (chord-shape 'secondSus2ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { a''':6 }
                        #biscuitTuning
                        #(offset-fret 5 (chord-shape 'second6ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { a''':9 }
                        #biscuitTuning
                        #(offset-fret 5 (chord-shape 'second9ChordShape biscuitTuning))

% A minor - second inversion
\storePredefinedDiagram #default-fret-table \chordmode { a''':min } 
                        #biscuitTuning
                        #(offset-fret 5 (chord-shape 'secondMinorChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { a''':min7 } 
                        #biscuitTuning
                        #(offset-fret 5 (chord-shape 'secondMin7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { a''':dim } 
                        #biscuitTuning
                        #(offset-fret 5 (chord-shape 'secondDimChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { a''':dim7 } 
                        #biscuitTuning
                        #(offset-fret 5 (chord-shape 'secondDim7ChordShape biscuitTuning))

% end of include file /biscuit-fretboards-a.ly


