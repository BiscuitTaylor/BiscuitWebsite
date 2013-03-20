% add FretBoards for the Biscuit
%   Note: 'Biscuit' tuning for tenor ukulele
%         Open G; low g in the bass
\version "2.16.0"


\include "../fretboards/biscuit-fretboards-style.ly"
\include "../fretboards/biscuit-fretboards-chordshapes.ly"

                        
%%%%%%%%%%%%%% A %%%%%%%%%%%%%%%%%
\include "../fretboards/biscuit-fretboards-a.ly"

%%%%%%%%%%%%%% B %%%%%%%%%%%%%%%%%
\include "../fretboards/biscuit-fretboards-b.ly"

%%%%%%%%%%%%%% B %%%%%%%%%%%%%%%%%
\include "../fretboards/biscuit-fretboards-c.ly"

%%%%%%%%%%%%%% C sharp %%%%%%%%%%%%%%%%%
\include "../fretboards/biscuit-fretboards-c-sharp.ly"

%%%%%%%%%%%%%% D %%%%%%%%%%%%%%%%%
\include "../fretboards/biscuit-fretboards-d.ly"

%%%%%%%%%%%%%% E %%%%%%%%%%%%%%%%%
\include "../fretboards/biscuit-fretboards-e.ly"

%%%%%%%%%%%%%% E %%%%%%%%%%%%%%%%%
\include "../fretboards/biscuit-fretboards-f.ly"

%%%%%%%%%%%%%% E %%%%%%%%%%%%%%%%%
\include "../fretboards/biscuit-fretboards-g.ly"


                        
%\storePredefinedDiagram #default-fret-table 
%						\chordmode {g''}
%                        #biscuitTuning
%                        #"4-3;3-2;5-4;x-x;"
%\storePredefinedDiagram #default-fret-table 
%						\chordmode {g'':9}
%                        #biscuitTuning
%                        #"4-3;3-2;5-4;2-1;"
\storePredefinedDiagram #default-fret-table
						\chordmode {g'':maj7}
                        #biscuitTuning
                        #"4-3;x-x;4-4;o-o;"

%\storePredefinedDiagram #default-fret-table 
%						\chordmode {g'':min}
%                        #biscuitTuning
%                        #"3-1-(;3-1;5-3;3-1-);"
%\storePredefinedDiagram #default-fret-table 
%						\chordmode {g'':min7}
%                        #biscuitTuning
%                        #"o-o;3-1-(;3-1;3-1-);"    
%\storePredefinedDiagram #default-fret-table 
%						\chordmode {g'':dim}
%                        #biscuitTuning
%                        #"3-3;2-1;5-4;2-1;"
                                                

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


