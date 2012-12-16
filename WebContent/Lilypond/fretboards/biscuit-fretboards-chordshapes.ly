% add FretBoards for the Biscuit
%   Note: 'Biscuit' tuning for tenor ukulele
%         Open G; low g in the bass
\version "2.14.0"

                        
%Declare predefined chord-shape
%TODO: Defining shapes on the first fret is awkward.
%      For each inversion here, we define all variations of the chord such that
%      the first fret is the lowest fret used for any of the chords.
%TODO: Learn Scheme, and modify Lilypond so that it can use negative offset-fret.
\addChordShape #'rootMajorChordShape #biscuitTuning #"3-1-(;3-1;3-1;3-1-);" % Bes
\addChordShape #'rootDom7ChordShape #biscuitTuning #"1-1;3-3;3-3-(;3-3-);"  % Bes:7
\addChordShape #'rootMaj7ChordShape #biscuitTuning #"3-2;3-3;3-4;2-1;"		% Bes:maj7
\addChordShape #'rootAugChordShape #biscuitTuning #"3-1-(;3-1;4-2;3-1-);" 	% Bes:aug

\addChordShape #'rootMinorChordShape #biscuitTuning #"3-2;2-1;3-3-(;3-3-);"	% Bes:min
\addChordShape #'rootMin7ChordShape #biscuitTuning #"1-1;2-2;3-3-(;3-3-);"	% Bes:min7

%First Inversion Major chord shape
\addChordShape #'firstMajorChordShape #biscuitTuning #"3-3;2-2;4-4;x-x;"	% fis'
%\addChordShape #'firstDom7ChordShape #biscuitTuning #"5-4;x-x;4-3;1-1;"	% fis':7
\addChordShape #'firstDom7ChordShape #biscuitTuning #"3-1;6-3;4-2;x-x;"		% fis':7
\addChordShape #'firstMaj7ChordShape #biscuitTuning #"3-1;5-4;4-3;x-x;"		% fis':maj7
\addChordShape #'firstAugChordShape #biscuitTuning #"3-3;3-3;4-4;x-x;"		% fis':aug

%First Inversion Minor chord shape
\addChordShape #'firstMinorChordShape #biscuitTuning #"2-2-(;2-2;4-4;2-2-);"% fis':min
\addChordShape #'firstMin7ChordShape #biscuitTuning #"2-2-(;2-2;4-4;x-x;"	% fis':min7

%Second Inversion Major chord shape
\addChordShape #'secondMajorChordShape #biscuitTuning #"4-1-(;5-2;6-3;4-1-);"	% e'''
\addChordShape #'secondDom7ChordShape #biscuitTuning #"4-4;3-3;2-2;1-1;"		% e''':7
%\addChordShape #'secondMaj7ChordShape #biscuitTuning #"4-3;4-4;2-2;1-1;"		% e''':maj7
\addChordShape #'secondMaj7ChordShape #biscuitTuning #"4-1;5-2;6-3;8-4;"		% e''':maj7
\addChordShape #'secondAugChordShape #biscuitTuning #"5-1-(;5-1;6-3;5-1-);"		% e''':aug

%Second Inversion Minor chord shape
\addChordShape #'secondMinorChordShape #biscuitTuning #"4-4;5-5;5-5;4-4;"		% e''':min
\addChordShape #'secondMin7ChordShape #biscuitTuning #"4-1;5-2-(;5-2-);7-4;"	% e''':min7


% end of include file /biscuit-fretboards-chordshapes.ly


