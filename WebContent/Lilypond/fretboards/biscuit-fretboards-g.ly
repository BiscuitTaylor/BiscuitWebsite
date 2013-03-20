% add FretBoards for the Biscuit
%   Note: 'Biscuit' tuning for tenor ukulele
%         Open G; low g in the bass
\version "2.16.0"

\include "biscuit-fretboards-style.ly"
\include "biscuit-fretboards-chordshapes.ly"

%%%%%%%%%%%%%% G %%%%%%%%%%%%%%%%%
% G - root position
\storePredefinedDiagram #default-fret-table \chordmode {g}
                        #biscuitTuning
                        #"o;o;o;o;"                      
\storePredefinedDiagram #default-fret-table \chordmode { g:7 } 
                        #biscuitTuning
                        #"o;o;3-3;o;"                      
\storePredefinedDiagram #default-fret-table \chordmode { g:maj7 } 
                        #biscuitTuning
                        #"o;o;4-4;o;"                      
\storePredefinedDiagram #default-fret-table \chordmode { g:aug }
                        #biscuitTuning
                        #"o;o;1-1;o;"                      
\storePredefinedDiagram #default-fret-table \chordmode { g:sus4 }
                        #biscuitTuning
                        #"o;1-1;o;o;"                      
\storePredefinedDiagram #default-fret-table \chordmode { g:sus2 }
                        #biscuitTuning
                        #"2-1;x;o;o;"                      
\storePredefinedDiagram #default-fret-table \chordmode { g:6 }
                        #biscuitTuning
                        #"o;o;2-2;o;"                      
\storePredefinedDiagram #default-fret-table \chordmode { g:9 }
                        #biscuitTuning
                        #"o;o;3-4;2-3;"                      

% G minor - root position
\storePredefinedDiagram #default-fret-table \chordmode { g:min } 
                        #biscuitTuning
                        #"o;3-3;o;3-4;"                      
\storePredefinedDiagram #default-fret-table \chordmode { g:min7 } 
                        #biscuitTuning
                        #"o;3-3-(;3-3;3-3-);"                      
\storePredefinedDiagram #default-fret-table \chordmode { g:dim } 
                        #biscuitTuning
                        #"o;2-2;3-3-(;3-3-);"                      

% G - first inversion
\storePredefinedDiagram #default-fret-table \chordmode { g'' }
                        #biscuitTuning
                        #(offset-fret 0 (chord-shape 'firstMajorChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { g'':7 } 
                        #biscuitTuning
                        #(offset-fret 0 (chord-shape 'firstDom7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { g'':maj7 } 
                        #biscuitTuning
                        #(offset-fret 0 (chord-shape 'firstMaj7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { g'':aug }
                        #biscuitTuning
                        #(offset-fret 0 (chord-shape 'firstAugChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { g'':sus4 }
                        #biscuitTuning
                        #(offset-fret 0 (chord-shape 'firstSus4ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { g'':sus2 }
                        #biscuitTuning
                        #(offset-fret 0 (chord-shape 'firstSus2ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { g'':6 }
                        #biscuitTuning
                        #(offset-fret 0 (chord-shape 'first6ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { g'':9 }
                        #biscuitTuning
                        #(offset-fret 0 (chord-shape 'first9ChordShape biscuitTuning))
 
% G minor - first inversion
\storePredefinedDiagram #default-fret-table \chordmode { g'':min }
                        #biscuitTuning
                        #(offset-fret 0 (chord-shape 'firstMinorChordShape biscuitTuning))
                        %#"7-1;7-1;9-3;7-1;"
\storePredefinedDiagram #default-fret-table \chordmode { g'':min7 } 
                        #biscuitTuning
                        #(offset-fret 0 (chord-shape 'firstMin7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { g'':dim }
                        #biscuitTuning
                        #(offset-fret 0 (chord-shape 'firstDimChordShape biscuitTuning))

% G - second inversion
\storePredefinedDiagram #default-fret-table \chordmode { g''' } 
                        #biscuitTuning
                        #(offset-fret 3 (chord-shape 'secondMajorChordShape biscuitTuning))
                        %#"1-1;2-2;3-3;1-1;"
\storePredefinedDiagram #default-fret-table \chordmode { g''':7 } 
                        #biscuitTuning
                        #(offset-fret 3 (chord-shape 'secondDom7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { g''':maj7 } 
                        #biscuitTuning
                        #(offset-fret 3 (chord-shape 'secondMaj7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { g''':aug }
                        #biscuitTuning
                        #(offset-fret 3 (chord-shape 'secondAugChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { g''':sus4 }
                        #biscuitTuning
                        #(offset-fret 3 (chord-shape 'secondSus4ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { g''':sus2 }
                        #biscuitTuning
                        #(offset-fret 3 (chord-shape 'secondSus2ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { g''':6 }
                        #biscuitTuning
                        #(offset-fret 3 (chord-shape 'second6ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { g''':9 }
                        #biscuitTuning
                        #(offset-fret 3 (chord-shape 'second9ChordShape biscuitTuning))

% G minor - second inversion
\storePredefinedDiagram #default-fret-table \chordmode { g''':min } 
                        #biscuitTuning
                        #(offset-fret 3 (chord-shape 'secondMinorChordShape biscuitTuning))
                        %#"1-1;2-2;3-3;1-1;"
\storePredefinedDiagram #default-fret-table \chordmode { g''':min7 } 
                        #biscuitTuning
                        #(offset-fret 3 (chord-shape 'secondMin7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { g''':dim } 
                        #biscuitTuning
                        #(offset-fret 3 (chord-shape 'secondDimChordShape biscuitTuning))
                        %#"1-1;2-2;3-3;1-1;"

% Octave above Root                      
\storePredefinedDiagram #default-fret-table 
						\chordmode {g''''}
                        #biscuitTuning
                        #"12-1;12-1;12-1;12-1;"

% end of include file /biscuit-fretboard-e.ly


