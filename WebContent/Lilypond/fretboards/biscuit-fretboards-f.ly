% add FretBoards for the Biscuit
%   Note: 'Biscuit' tuning for tenor ukulele
%         Open G; low g in the bass
\version "2.16.0"

\include "biscuit-fretboards-style.ly"
\include "biscuit-fretboards-chordshapes.ly"

%%%%%%%%%%%%%% F %%%%%%%%%%%%%%%%%
% F - root position
\storePredefinedDiagram #default-fret-table \chordmode { f }
                        #biscuitTuning
                        #(offset-fret 7 (chord-shape 'rootMajorChordShape biscuitTuning))
						% should be 11?
\storePredefinedDiagram #default-fret-table \chordmode { f:7 } 
                        #biscuitTuning
                        #(offset-fret 7 (chord-shape 'rootDom7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { f:maj7 } 
                        #biscuitTuning
                        #(offset-fret 7 (chord-shape 'rootMaj7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { f:aug }
                        #biscuitTuning
						#(offset-fret 7 (chord-shape 'rootAugChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { f:sus4 }
                        #biscuitTuning
						#(offset-fret 7 (chord-shape 'rootSus4ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { f:sus2 }
                        #biscuitTuning
                        #(offset-fret 7 (chord-shape 'rootSus2ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { f:6 }
                        #biscuitTuning
                        #(offset-fret 7 (chord-shape 'root6ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { f:9 }
                        #biscuitTuning
                        #(offset-fret 7 (chord-shape 'root9ChordShape biscuitTuning))

% F minor - root position
\storePredefinedDiagram #default-fret-table \chordmode { f:min }
                        #biscuitTuning
                        #(offset-fret 7 (chord-shape 'rootMinorChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { f:min7 } 
                        #biscuitTuning
                        #(offset-fret 7 (chord-shape 'rootMin7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { f:dim }
                        #biscuitTuning
                        #(offset-fret 7 (chord-shape 'rootDimChordShape biscuitTuning))

% F - first inversion
% Define these from scratch, at fret 0 (instead of using chord-shape) 
\storePredefinedDiagram #default-fret-table \chordmode { f'' }
                        #biscuitTuning
						#"2-2;1-1;3-3;x;"
\storePredefinedDiagram #default-fret-table \chordmode { f'':7 } 
                        #biscuitTuning
						#"2-2;4-4;3-3;x;"
\storePredefinedDiagram #default-fret-table \chordmode { f'':maj7 } 
                        #biscuitTuning
						#"2-1;5-4;3-2;x;"
\storePredefinedDiagram #default-fret-table \chordmode { f'':aug }
                        #biscuitTuning
						#"2-1;2-1;3-3;x;"
\storePredefinedDiagram #default-fret-table \chordmode { f'':sus4 }
                        #biscuitTuning
						#"3-2;1-1;3-3;x;"
\storePredefinedDiagram #default-fret-table \chordmode { f'':sus2 }
                        #biscuitTuning
						#"o;1-1;3-3;x;"
\storePredefinedDiagram #default-fret-table \chordmode { f'':6 }
                        #biscuitTuning
						#"2-2;3-3;3-4;x;"
\storePredefinedDiagram #default-fret-table \chordmode { f'':9 }
                        #biscuitTuning
						#"2-2;1-1;3-3;o;"

% F minor - first inversion
\storePredefinedDiagram #default-fret-table \chordmode { f'':min }
                        #biscuitTuning
						#"1-1-(;1-1;3-3;1-1-);"
\storePredefinedDiagram #default-fret-table \chordmode { f'':min7 } 
                        #biscuitTuning
						#"1-1-(;4-4;3-3;1-1-);"
\storePredefinedDiagram #default-fret-table \chordmode { f'':dim }
                        #biscuitTuning
						"1-1;o;3-3;x;"

% F - second inversion
\storePredefinedDiagram #default-fret-table \chordmode { f''' } 
                        #biscuitTuning
                        #(offset-fret 1 (chord-shape 'secondMajorChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { f''':7 } 
                        #biscuitTuning
                        #(offset-fret 1 (chord-shape 'secondDom7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { f''':maj7 } 
                        #biscuitTuning
                        #(offset-fret 1 (chord-shape 'secondMaj7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { f''':aug }
                        #biscuitTuning
						#(offset-fret 1 (chord-shape 'secondAugChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { f''':sus4 }
                        #biscuitTuning
						#(offset-fret 1 (chord-shape 'secondSus4ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { f''':sus2 }
                        #biscuitTuning
                        #(offset-fret 1 (chord-shape 'secondSus2ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { f''':6 }
                        #biscuitTuning
                        #(offset-fret 1 (chord-shape 'second6ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { f''':9 }
                        #biscuitTuning
                        #(offset-fret 1 (chord-shape 'second9ChordShape biscuitTuning))

% F minor - second inversion
\storePredefinedDiagram #default-fret-table \chordmode { f''':min } 
                        #biscuitTuning
                        #(offset-fret 1 (chord-shape 'secondMinorChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { f''':min7 } 
                        #biscuitTuning
                        #(offset-fret 1 (chord-shape 'secondMin7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { f''':dim } 
                        #biscuitTuning
                        #(offset-fret 1 (chord-shape 'secondDimChordShape biscuitTuning))


% end of include file /biscuit-fretboard-f.ly


