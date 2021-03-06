% add FretBoards for guitar
\version "2.14.0"

% Standard fretboards from predefined-guitar-fretboards.ly are fine for most things...
% Here we just add a few specialty chords that are used in some of Biscuit's transcriptions

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

% G/F# and Csus2 are used in Weight of Lies

\storePredefinedDiagram #default-fret-table 
						\chordmode {g/fis}
                        #guitar-tuning
                        #"2-1;2-2;o-o;o-o;o-o;3-3;"

\storePredefinedDiagram #default-fret-table 
						\chordmode {c:sus2}
                        #guitar-tuning
                        #"x-x;3-3;o-o;o-o;1-1;o-o;"


% end of include file /biscuit-guitar-fretboard.ly


