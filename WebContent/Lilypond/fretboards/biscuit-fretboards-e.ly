% add FretBoards for the Biscuit
%   Note: 'Biscuit' tuning for tenor ukulele
%         Open G; low g in the bass
\version "2.16.1"

\include "biscuit-fretboards-style.ly"
\include "biscuit-fretboards-chordshapes.ly"

%%%%%%%%%%%%%% E %%%%%%%%%%%%%%%%%
% E - root position
\storePredefinedDiagram #default-fret-table \chordmode { e }
                        #biscuitTuning
                        #(offset-fret 6 (chord-shape 'rootMajorChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { e:7 } 
                        #biscuitTuning
                        #(offset-fret 6 (chord-shape 'rootDom7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { e:maj7 } 
                        #biscuitTuning
                        #(offset-fret 6 (chord-shape 'rootMaj7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { e:aug }
                        #biscuitTuning
                        #(offset-fret 6 (chord-shape 'rootAugChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { e:sus4 }
                        #biscuitTuning
                        #(offset-fret 6 (chord-shape 'rootSus4ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { e:sus2 }
                        #biscuitTuning
                        #(offset-fret 6 (chord-shape 'rootSus2ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { e:6 }
                        #biscuitTuning
                        #(offset-fret 6 (chord-shape 'root6ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { e:9 }
                        #biscuitTuning
                        #(offset-fret 6 (chord-shape 'root9ChordShape biscuitTuning))

% E minor - root position
\storePredefinedDiagram #default-fret-table \chordmode { e:min } 
                        #biscuitTuning
                        #(offset-fret 6 (chord-shape 'rootMinorChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { e:min7 } 
                        #biscuitTuning
                        #(offset-fret 6 (chord-shape 'rootMin7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { e:dim } 
                        #biscuitTuning
                        #(offset-fret 6 (chord-shape 'rootDimChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { e:dim7 } 
                        #biscuitTuning
                        #(offset-fret 6 (chord-shape 'rootDim7ChordShape biscuitTuning))

% E - first inversion
% Define these from scratch, at fret 0 (instead of using chord-shape) 
\storePredefinedDiagram #default-fret-table \chordmode { e'' }
                        #biscuitTuning
						#"1-1;o;2-3;x;"
\storePredefinedDiagram #default-fret-table \chordmode { e'':7 } 
                        #biscuitTuning
						#"1-2;3-4;2-3;x;"
\storePredefinedDiagram #default-fret-table \chordmode { e'':maj7 } 
                        #biscuitTuning
						#"1-1;4-4;2-2;x;"
\storePredefinedDiagram #default-fret-table \chordmode { e'':aug }
                        #biscuitTuning
						#"1-1;1-1;2-3;x;"
\storePredefinedDiagram #default-fret-table \chordmode { e'':sus4 }
                        #biscuitTuning
						#"2-2;o;2-3;x;"
\storePredefinedDiagram #default-fret-table \chordmode { e'':sus2 }
                        #biscuitTuning
                        #(offset-fret 6 (chord-shape 'firstSus2ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { e'':6 }
                        #biscuitTuning
						#"1-2;2-3;2-4;x;"
\storePredefinedDiagram #default-fret-table \chordmode { e'':9 }
                        #biscuitTuning
                        #(offset-fret 6 (chord-shape 'first9ChordShape biscuitTuning))

% E minor - first inversion
\storePredefinedDiagram #default-fret-table \chordmode { e'':min }
                        #biscuitTuning
						#"o-o;o-o;2-3;o-o;"
\storePredefinedDiagram #default-fret-table \chordmode { e'':min7 } 
                        #biscuitTuning
						#"o-o;3-4;2-3;o-o;"
\storePredefinedDiagram #default-fret-table \chordmode { e'':dim }
                        #biscuitTuning
						#"o-o;x-x;2-2;3-3;"
\storePredefinedDiagram #default-fret-table \chordmode { e'':dim7 }
                        #biscuitTuning
						#"o-o;3-3;2-2;3-4;"

% E - second inversion
\storePredefinedDiagram #default-fret-table \chordmode { e''' } 
                        #biscuitTuning
                        #(offset-fret 0 (chord-shape 'secondMajorChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { e''':7 } 
                        #biscuitTuning
                        #(offset-fret 0 (chord-shape 'secondDom7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { e''':maj7 } 
                        #biscuitTuning
                        #(offset-fret 0 (chord-shape 'secondMaj7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { e''':aug }
                        #biscuitTuning
                        #(offset-fret 0 (chord-shape 'secondAugChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { e''':sus4 }
                        #biscuitTuning
                        #(offset-fret 0 (chord-shape 'secondSus4ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { e''':sus2 }
                        #biscuitTuning
                        #(offset-fret 0 (chord-shape 'secondSus2ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { e''':6 }
                        #biscuitTuning
                        #(offset-fret 0 (chord-shape 'second6ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { e''':9 }
                        #biscuitTuning
                        #(offset-fret 0 (chord-shape 'second9ChordShape biscuitTuning))

% E minor - second inversion
\storePredefinedDiagram #default-fret-table \chordmode { e''':min } 
                        #biscuitTuning
                        #(offset-fret 0 (chord-shape 'secondMinorChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { e''':min7 } 
                        #biscuitTuning
                        #(offset-fret 0 (chord-shape 'secondMin7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { e''':dim } 
                        #biscuitTuning
                        #(offset-fret 0 (chord-shape 'secondDimChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { e''':dim7 } 
                        #biscuitTuning
                        #(offset-fret 0 (chord-shape 'secondDim7ChordShape biscuitTuning))


% end of include file /biscuit-fretboard-e.ly


