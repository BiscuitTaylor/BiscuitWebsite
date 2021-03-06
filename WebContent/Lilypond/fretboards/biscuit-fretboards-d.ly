% add FretBoards for the Biscuit
%   Note: 'Biscuit' tuning for tenor ukulele
%         Open G; low g in the bass
\version "2.16.1"

#(ly:set-option 'relative-includes #t)
% With relative-includes set, the path for each \include command will be taken relative to the file containing that command.
% This behavior is recommended and it will become the default behavior in a future version of lilypond.
\include "biscuit-fretboards-style.ly"
\include "biscuit-fretboards-chordshapes.ly"

%%%%%%%%%%%%%% D %%%%%%%%%%%%%%%%%
% D - root position
\storePredefinedDiagram #default-fret-table \chordmode { d }
                        #biscuitTuning
                        #(offset-fret 4 (chord-shape 'rootMajorChordShape biscuitTuning))
						% oops;  -1  doesn't seem to work as an offset.  Damn.
                        % Well, just hard-code it instead.
\storePredefinedDiagram #default-fret-table \chordmode { d:7 } 
                        #biscuitTuning
                        #(offset-fret 4 (chord-shape 'rootDom7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { d:maj7 } 
                        #biscuitTuning
                        #(offset-fret 4 (chord-shape 'rootMaj7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { d:aug }
                        #biscuitTuning
                        #(offset-fret 4 (chord-shape 'rootAugChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { d:sus4 }
                        #biscuitTuning
                        #(offset-fret 4 (chord-shape 'rootSus4ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { d:sus2 }
                        #biscuitTuning
                        #(offset-fret 4 (chord-shape 'rootSus2ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { d:6 }
                        #biscuitTuning
                        #(offset-fret 4 (chord-shape 'root6ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { d:9 }
                        #biscuitTuning
                        #(offset-fret 4 (chord-shape 'root9ChordShape biscuitTuning))

% D minor - root position
\storePredefinedDiagram #default-fret-table \chordmode { d:min }
                        #biscuitTuning
                        #(offset-fret 4 (chord-shape 'rootMinorChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { d:min7 } 
                        #biscuitTuning
                        #(offset-fret 4 (chord-shape 'rootMin7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { d:dim }
                        #biscuitTuning
                        #(offset-fret 4 (chord-shape 'rootDimChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { d:dim7 }
                        #biscuitTuning
                        #(offset-fret 4 (chord-shape 'rootDim7ChordShape biscuitTuning))

% D - first inversion
\storePredefinedDiagram #default-fret-table \chordmode { d'' }
                        #biscuitTuning
                        #(offset-fret 8 (chord-shape 'firstMajorChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { d'':7 } 
                        #biscuitTuning
                        #(offset-fret 8 (chord-shape 'firstDom7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { d'':maj7 } 
                        #biscuitTuning
                        #(offset-fret 8 (chord-shape 'firstMaj7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { d'':aug }
                        #biscuitTuning
                        #(offset-fret 8 (chord-shape 'firstAugChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { d'':sus4 }
                        #biscuitTuning
                        #(offset-fret 8 (chord-shape 'firstSus4ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { d'':sus2 }
                        #biscuitTuning
                        #(offset-fret 8 (chord-shape 'firstSus2ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { d'':6 }
                        #biscuitTuning
                        #(offset-fret 8 (chord-shape 'first6ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { d'':9 }
                        #biscuitTuning
                        #(offset-fret 8 (chord-shape 'first9ChordShape biscuitTuning))

% D minor - first inversion
\storePredefinedDiagram #default-fret-table \chordmode { d'':min }
                        #biscuitTuning
                        #(offset-fret 8 (chord-shape 'firstMinorChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { d'':min7 } 
                        #biscuitTuning
                        #(offset-fret 8 (chord-shape 'firstMin7ChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { d'':dim }
                        #biscuitTuning
                        #(offset-fret 8 (chord-shape 'firstDimChordShape biscuitTuning))
\storePredefinedDiagram #default-fret-table \chordmode { d'':dim7 }
                        #biscuitTuning
                        #(offset-fret 8 (chord-shape 'firstDim7ChordShape biscuitTuning))

% D - second inversion
\storePredefinedDiagram #default-fret-table \chordmode { d''' } 
                        #biscuitTuning
                        #"2-1-(;3-2;4-3;2-1-);"
\storePredefinedDiagram #default-fret-table \chordmode { d''':7 } 
                        #biscuitTuning
                        #"2-1;3-2;4-3;4-4;"
\storePredefinedDiagram #default-fret-table \chordmode { d''':maj7 } 
                        #biscuitTuning
                        #"2-1;3-2;4-3;6-4;"
\storePredefinedDiagram #default-fret-table \chordmode { d''':aug }
                        #biscuitTuning
                        #"3-1-(;3-1;4-3;3-1-);"
\storePredefinedDiagram #default-fret-table \chordmode { d''':sus4 }
                        #biscuitTuning
                        #"2-1-(;3-2;5-4;2-1-);"
\storePredefinedDiagram #default-fret-table \chordmode { d''':sus2 }
                        #biscuitTuning
                        #"2-1-(;3-2;2-1;2-1-);"
\storePredefinedDiagram #default-fret-table \chordmode { d''':6 }
                        #biscuitTuning
                        #"2-1;3-2;4-3-(;4-3-);"
\storePredefinedDiagram #default-fret-table \chordmode { d''':9 }
                        #biscuitTuning
                        #"2-1-(;6-4;4-3;2-1-);"

% D minor - second inversion
\storePredefinedDiagram #default-fret-table \chordmode { d''':min } 
                        #biscuitTuning
                        #"2-1-(;3-3;3-4;2-1-);"
\storePredefinedDiagram #default-fret-table \chordmode { d''':min7 } 
                        #biscuitTuning
                        #"2-1;3-2-(;3-2-);5-4;"
\storePredefinedDiagram #default-fret-table \chordmode { d''':dim } 
                        #biscuitTuning
                        #"1-1-(;3-3;3-4;1-1-);"
\storePredefinedDiagram #default-fret-table \chordmode { d''':dim7 } 
                        #biscuitTuning
                        #"1-1;3-2-(;3-2-);4-4;"

% end of include file /biscuit-fretboard-d.ly


