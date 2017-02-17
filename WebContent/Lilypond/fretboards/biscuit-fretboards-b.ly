% add FretBoards for the Biscuit
%   Note: 'Biscuit' tuning for tenor ukulele
%         Open G; low g in the bass
\version "2.16.1"

#(ly:set-option 'relative-includes #t)
% With relative-includes set, the path for each \include command will be taken relative to the file containing that command.
% This behavior is recommended and it will become the default behavior in a future version of lilypond.
\include "biscuit-fretboards-style.ly"
\include "biscuit-fretboards-chordshapes.ly"

%%%%%%%%%%%%%% B %%%%%%%%%%%%%%%%%
% B - root position
\storePredefinedDiagram #default-fret-table \chordmode { b }
                        #biscuitTuning
                        #(offset-fret 1 (chord-shape 'rootMajorChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { b:7 } 
                        #biscuitTuning
                        #(offset-fret 1 (chord-shape 'rootDom7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { b:maj7 } 
                        #biscuitTuning
                        #(offset-fret 1 (chord-shape 'rootMaj7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { b:aug }
                        #biscuitTuning
                        #(offset-fret 1 (chord-shape 'rootAugChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { b:sus4 }
                        #biscuitTuning
                        #(offset-fret 1 (chord-shape 'rootSus4ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { b:sus2 }
                        #biscuitTuning
                        #(offset-fret 1 (chord-shape 'rootSus2ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { b:6 }
                        #biscuitTuning
                        #(offset-fret 1 (chord-shape 'root6ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { b:9 }
                        #biscuitTuning
                        #(offset-fret 1 (chord-shape 'root9ChordShape biscuitTuning))

% B minor - root position
\storePredefinedDiagram #default-fret-table \chordmode { b:min }
                        #biscuitTuning
                        #(offset-fret 1 (chord-shape 'rootMinorChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { b:min7 } 
                        #biscuitTuning
                        #(offset-fret 1 (chord-shape 'rootMin7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { b:dim }
                        #biscuitTuning
                        #(offset-fret 1 (chord-shape 'rootDimChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { b:dim7 }
                        #biscuitTuning
                        #(offset-fret 1 (chord-shape 'rootDim7ChordShape biscuitTuning))

% B - first inversion
\storePredefinedDiagram #default-fret-table \chordmode { b'' }
                        #biscuitTuning
                        #(offset-fret 5 (chord-shape 'firstMajorChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { b'':7 } 
                        #biscuitTuning
                        #(offset-fret 5 (chord-shape 'firstDom7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { b'':maj7 } 
                        #biscuitTuning
                        #(offset-fret 5 (chord-shape 'firstMaj7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { b'':aug }
                        #biscuitTuning
                        #(offset-fret 5 (chord-shape 'firstAugChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { b'':sus4 }
                        #biscuitTuning
                        #(offset-fret 5 (chord-shape 'firstSus4ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { b'':sus2 }
                        #biscuitTuning
                        #(offset-fret 5 (chord-shape 'firstSus2ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { b'':6 }
                        #biscuitTuning
                        #(offset-fret 5 (chord-shape 'first6ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { b'':9 }
                        #biscuitTuning
                        #(offset-fret 5 (chord-shape 'first9ChordShape biscuitTuning))

% B minor - first inversion
\storePredefinedDiagram #default-fret-table \chordmode { b'':min }
                        #biscuitTuning
                        #(offset-fret 5 (chord-shape 'firstMinorChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { b'':min7 } 
                        #biscuitTuning
                        #(offset-fret 5 (chord-shape 'firstMin7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { b'':dim }
                        #biscuitTuning
                        #(offset-fret 5 (chord-shape 'firstDimChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { b'':dim7 }
                        #biscuitTuning
                        #(offset-fret 5 (chord-shape 'firstDim7ChordShape biscuitTuning))

% B - second inversion
\storePredefinedDiagram #default-fret-table \chordmode { b''' } 
                        #biscuitTuning
                        #(offset-fret 7 (chord-shape 'secondMajorChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { b''':7 } 
                        #biscuitTuning
                        #(offset-fret 7 (chord-shape 'secondDom7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { b''':maj7 } 
                        #biscuitTuning
                        #(offset-fret 7 (chord-shape 'secondMaj7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { b''':aug }
                        #biscuitTuning
                        #(offset-fret 7 (chord-shape 'secondAugChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { b''':sus4 }
                        #biscuitTuning
                        #(offset-fret 7 (chord-shape 'secondSus4ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { b''':sus2 }
                        #biscuitTuning
                        #(offset-fret 7 (chord-shape 'secondSus2ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { b''':6 }
                        #biscuitTuning
                        #(offset-fret 7 (chord-shape 'second6ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { b''':9 }
                        #biscuitTuning
                        #(offset-fret 7 (chord-shape 'second9ChordShape biscuitTuning))

% B minor - second inversion
\storePredefinedDiagram #default-fret-table \chordmode { b''':min } 
                        #biscuitTuning
                        #(offset-fret 7 (chord-shape 'secondMinorChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { b''':min7 } 
                        #biscuitTuning
                        #(offset-fret 7 (chord-shape 'secondMin7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { b''':dim } 
                        #biscuitTuning
                        #(offset-fret 7 (chord-shape 'secondDimChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { b''':dim7 } 
                        #biscuitTuning
                        #(offset-fret 7 (chord-shape 'secondDim7ChordShape biscuitTuning))


% end of include file /biscuit-fretboards-b.ly


