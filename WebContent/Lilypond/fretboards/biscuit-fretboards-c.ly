% add FretBoards for the Biscuit
%   Note: 'Biscuit' tuning for tenor ukulele
%         Open G; low g in the bass
\version "2.16.0"


\include "biscuit-fretboards-style.ly"
\include "biscuit-fretboards-chordshapes.ly"

                        
\storePredefinedDiagram #default-fret-table 
						\chordmode {c}
                        #biscuitTuning
                        #"5-1-(;5-1;5-1;5-1-);"
\storePredefinedDiagram #default-fret-table 
						\chordmode {c:7}
                        #biscuitTuning
                        #"3-1;5-3-(;5-3;5-3-);"
\storePredefinedDiagram #default-fret-table 
						\chordmode {c:7}
                        #biscuitTuning
                        #"5-1-(;5-1;8-3;5-1-);"
\storePredefinedDiagram #default-fret-table 
						\chordmode {c:maj7}
                        #biscuitTuning
                        #"5-2;5-3;5-4;4-1;"
                        %#"2-1;5-3-(;5-3;5-3-);"
\storePredefinedDiagram #default-fret-table \chordmode { c:aug }
                        #biscuitTuning
                        #(offset-fret 2 (chord-shape 'rootAugChordShape biscuitTuning))
                        
\storePredefinedDiagram #default-fret-table 
						\chordmode {c:min7}
                        #biscuitTuning
                        #"3-1;4-2;5-3;5-3;"
\storePredefinedDiagram #default-fret-table 
						\chordmode {c:min}
                        #biscuitTuning
                        #"5-2;4-1;5-3;5-3;"

\storePredefinedDiagram #default-fret-table 
						\chordmode {c''}
                        #biscuitTuning
                        #"9-3;8-2;10-4;x-x;"
\storePredefinedDiagram #default-fret-table 
						\chordmode {c'':7}
                        #biscuitTuning
                        #"5-1;8-3-(;8-3-);9-4;"
\storePredefinedDiagram #default-fret-table 
						\chordmode {c'':9}
                        #biscuitTuning
                        #"9-3;8-2;10-4;7-1;"
\storePredefinedDiagram #default-fret-table 
						\chordmode {c''/e}
                        #biscuitTuning
                        #"9-3;8-2;10-4;x-x;"
\storePredefinedDiagram #default-fret-table 
						\chordmode {c''/g}
                        #biscuitTuning
                        #"x-x;8-2;10-4;9-3;"
\storePredefinedDiagram #default-fret-table 
						\chordmode {c''/d}
                        #biscuitTuning
                        #"9-3;8-2;10-4;7-1;"
\storePredefinedDiagram #default-fret-table 
						\chordmode {c'':2/d}
                        #biscuitTuning
                        #"9-3;8-2;10-4;7-1;"
\storePredefinedDiagram #default-fret-table
						\chordmode {c'':maj7}
                        #biscuitTuning
                        #"9-4;x-x;9-3;5-1;"
\storePredefinedDiagram #default-fret-table \chordmode { c'':aug }
                        #biscuitTuning
                        #(offset-fret 6 (chord-shape 'firstAugChordShape biscuitTuning))
         
\storePredefinedDiagram #default-fret-table 
						\chordmode {c'':min}
                        #biscuitTuning
                        #"8-1-(;8-1;10-3;8-1-);"
\storePredefinedDiagram #default-fret-table 
						\chordmode {c'':min7}
                        #biscuitTuning
                        #"5-1;8-3-(;8-3;8-3-);"    
               
\storePredefinedDiagram #default-fret-table 
						\chordmode {c'''}
                        #biscuitTuning
                        #"o;1-2;2-3;o;"
\storePredefinedDiagram #default-fret-table 
						\chordmode {c''':7}
                        #biscuitTuning
                        #"o;1-2;2-3;3-3;"
\storePredefinedDiagram #default-fret-table
						\chordmode {c''':maj7}
                        #biscuitTuning
                        #"o-o;1-2;2-3;4-4;"
\storePredefinedDiagram #default-fret-table \chordmode { c''':aug }
                        #biscuitTuning
                        #(offset-fret 8 (chord-shape 'secondAugChordShape biscuitTuning))

\storePredefinedDiagram #default-fret-table 
						\chordmode {c''':min}
                        #biscuitTuning
                        #"o-o;1-3;1-4;o-o;"                        
\storePredefinedDiagram #default-fret-table 
						\chordmode {c''':min7}
                        #biscuitTuning
                        #"o-o;1-2-(;1-2-);3-4;"    


\storePredefinedDiagram #default-fret-table \chordmode {a:min}
                        #biscuitTuning
                        #"2-2;1-1;2-3;2-3;"
\storePredefinedDiagram #default-fret-table \chordmode {a'':min}
                        #biscuitTuning
                        #"5-1;5-1;7-3;5-1;"
\storePredefinedDiagram #default-fret-table \chordmode {e:min}
                        #biscuitTuning
                        #"9-2;8-1;9-3;9-4;"
\storePredefinedDiagram #default-fret-table \chordmode {e:min7}
                        #biscuitTuning
                        #"7-1;8-2;9-3;9-4;"
\storePredefinedDiagram #default-fret-table \chordmode {fis:min} %f# min
                        #biscuitTuning
                        #"11-2;10-1;11-3;11-3;"
                        

% end of include file /biscuit_fretboards-c.ly


