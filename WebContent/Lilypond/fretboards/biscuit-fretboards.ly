% add FretBoards for the Biscuit
%   Note: 'Biscuit' tuning for tenor ukulele
%         Open G; low g in the bass
\version "2.16.0"


\include "biscuit-fretboards-style.ly"
\include "biscuit-fretboards-chordshapes.ly"

                        
%%%%%%%%%%%%%% A %%%%%%%%%%%%%%%%%
\include "biscuit-fretboards-a.ly"
\include "biscuit-fretboards-a-min.ly"

%%%%%%%%%%%%%% B %%%%%%%%%%%%%%%%%
\include "biscuit-fretboards-b.ly"

%%%%%%%%%%%%%% B %%%%%%%%%%%%%%%%%
\include "biscuit-fretboards-c.ly"

%%%%%%%%%%%%%% C sharp %%%%%%%%%%%%%%%%%
\include "biscuit-fretboards-c-sharp.ly"

%%%%%%%%%%%%%% D %%%%%%%%%%%%%%%%%
\include "biscuit-fretboards-d.ly"

%%%%%%%%%%%%%% E %%%%%%%%%%%%%%%%%
\include "biscuit-fretboards-e.ly"


%\storePredefinedDiagram #default-fret-table \gMajor

\storePredefinedDiagram #default-fret-table \chordmode {g}
                        #biscuitTuning
                        #"o;o;o;o;"                      
\storePredefinedDiagram #default-fret-table \chordmode {g:maj7}
                        #biscuitTuning
                        #"12-1;12-2;12-3;11-4;"
\storePredefinedDiagram #default-fret-table \chordmode {g:7}
                        #biscuitTuning
                        #"10-1;12-3;12-3;12-3;"
\storePredefinedDiagram #default-fret-table \chordmode { g:aug }
                        #biscuitTuning
                        #(offset-fret 9 (chord-shape 'rootAugChordShape biscuitTuning))


\storePredefinedDiagram #default-fret-table \chordmode {g:min}
                        #biscuitTuning
                        #"12-2;11-1;12-3;12-3;"
\storePredefinedDiagram #default-fret-table \chordmode {g:min7}
                        #biscuitTuning
                        #"10-1;11-2;12-3;12-3;"
                        
\storePredefinedDiagram #default-fret-table 
						\chordmode {g''}
                        #biscuitTuning
                        #"4-3;3-2;5-4;x-x;"
\storePredefinedDiagram #default-fret-table 
						\chordmode {g'':9}
                        #biscuitTuning
                        #"4-3;3-2;5-4;2-1;"
\storePredefinedDiagram #default-fret-table
						\chordmode {g'':maj7}
                        #biscuitTuning
                        #"4-3;x-x;4-4;o-o;"
\storePredefinedDiagram #default-fret-table \chordmode { g'':aug }
                        #biscuitTuning
                        #(offset-fret 1 (chord-shape 'firstAugChordShape biscuitTuning))

\storePredefinedDiagram #default-fret-table 
						\chordmode {g'':min}
                        #biscuitTuning
                        #"3-1-(;3-1;5-3;3-1-);"
\storePredefinedDiagram #default-fret-table 
						\chordmode {g'':min7}
                        #biscuitTuning
                        #"o-o;3-1-(;3-1;3-1-);"    
\storePredefinedDiagram #default-fret-table 
						\chordmode {g'':dim}
                        #biscuitTuning
                        #"3-3;2-1;5-4;2-1;"
                        
\storePredefinedDiagram #default-fret-table 
						\chordmode {g'''}
                        #biscuitTuning
                        #"7-1-1;8-2;9-3;7-1-1;"                        
\storePredefinedDiagram #default-fret-table
						\chordmode {g''':maj7}
                        #biscuitTuning
                        #"7-1;8-2;9-3;11-4;"
\storePredefinedDiagram #default-fret-table 
						\chordmode {g''':7}
                        #biscuitTuning
                        #"7-4;6-3;5-2;4-1;"
\storePredefinedDiagram #default-fret-table 
						\chordmode {g''':9}
                        #biscuitTuning
                        #"9-3;8-2;10-4;7-1;"
\storePredefinedDiagram #default-fret-table \chordmode { g''':aug }
                        #biscuitTuning
                        #(offset-fret 3 (chord-shape 'secondAugChordShape biscuitTuning))
                       
                                            
\storePredefinedDiagram #default-fret-table 
						\chordmode {g''':min}
                        #biscuitTuning
                        #"7-1-(;8-3;8-4;7-1-);"                        
\storePredefinedDiagram #default-fret-table 
						\chordmode {g''':min7}
                        #biscuitTuning
                        #"7-1;8-2-(;8-2-);10-4;"    
                        
% Octave above Root                      
\storePredefinedDiagram #default-fret-table 
						\chordmode {g''''}
                        #biscuitTuning
                        #"12-1;12-1;12-1;12-1;"

%{
%gMajor = { <g\4 b\3 d'\2 g'\1> }
gMajor = { <d'\4 g'\3 b'\2 d'''\1> }
cMajor = { <g\4 c\3 e'\2 g'\1> }
dMajor = { <a\4 d'\3 fis' \2 a'\1> }
fMajor = { <c\4 f'\3 a'\2 d'''\1> }
aMinor = { <c\4 e'\3 a'\2 c'\1> }
eMinor = { <e'\4 g'\3 b'''\2 e'''\1> }
cMajSeven = { <c\4 e'\3 g'\2 b'\1> }
fMajSeven = { <c\4 f'\3 a'\2 e'''\1> }
%}



% end of include file /biscuit-fretboards.ly


