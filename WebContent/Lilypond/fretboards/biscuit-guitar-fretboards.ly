% add FretBoards for standard guitar
\version "2.14.0"

biscuitCustomGuitarFretboards =
{
  \override FretBoard
    #'(fret-diagram-details fret-label-font-mag) = #'0.7
  % Move the fret# up a little, putting it between the fret and the finger-dot
  \override FretBoard
    #'(fret-diagram-details fret-label-vertical-offset) = #'-0.3 
  % Put fingering numbers inside the dots
  \override FretBoard
    #'(fret-diagram-details finger-code) = #'in-dot
}

\storePredefinedDiagram #default-fret-table 
						\chordmode {e/gis}
                        #guitar-tuning
                        #"4-3;2-1;2-1;x-x;x-x;x-x;"
\storePredefinedDiagram #default-fret-table 
						\chordmode {a/gis}
                        #guitar-tuning
                        #"4-1;4-1;7-4;6-3;x-x;o-o;"

%maj7?
\storePredefinedDiagram #default-fret-table 
						\chordmode {f:maj7}
                        #guitar-tuning
                        #"x-x;x-x;3-4;2-3;x-x;o-o;"

%TODO: use a predefined chord-shape

% end of include file /biscuit-guitar-fretboard.ly


