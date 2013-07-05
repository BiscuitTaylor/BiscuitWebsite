% add FretBoards for the Biscuit
%   Note: 'Biscuit' tuning for tenor ukulele
%         Open G; low g in the bass
\version "2.16.1"


%biscuitTuning = \stringTuning <g d b, g,>  % backwards
%biscuitTuning = \stringTuning <g, b, d g>  % too low
biscuitTuning = \stringTuning <g b d' g'>  

biscuitCustomFretboards =
{
  \set stringTunings = #biscuitTuning
  \override FretBoard
    #'(fret-diagram-details string-count) = #'4
  % Use upercase Roman numerals for the fret# notation rather than the hard-to-read default lowercase Roman
%  \override FretBoard
%    #'(fret-diagram-details number-type) = #'roman-upper
  % Make the fret# notation a little larger than the puny default 0.5
  \override FretBoard
    #'(fret-diagram-details fret-label-font-mag) = #'0.7
  % Move the fret# up a little, putting it between the fret and the finger-dot
  \override FretBoard
    #'(fret-diagram-details fret-label-vertical-offset) = #'-0.3 
  % Put fingering numbers inside the dots
  \override FretBoard
    #'(fret-diagram-details finger-code) = #'in-dot
  %\override #'(fret-diagram-details . (
  %               (number-type . roman-upper)
  %              (fret-label-font-mag . 0.6)
  %              ))
}

% utility macro for old geezers
bigChordNames =
<<
	%Big chord names, so old geezers can percieve them			
	\override ChordName #'font-size = #2 
	%Bold chord names, so old geezers can grok them			
	\override ChordName #'font-series = #'bold
	%\set predefinedDiagramTable = #custom-fretboard-table-open-e
>>

%Verbose style
    %% C major for guitar, barred on third fret
    %  verbose style
    %  roman fret label, finger labels below string, straight barre
%    c'2^\markup {
%      % 110% of default size
%      \override #'(size . 1.1) {
%        \override #'(fret-diagram-details . (
%                     (number-type . roman-lower)
%                     (finger-code . below-string)
%                     (barre-type . straight))) {
%          \fret-diagram-verbose #'((mute 6)
%                                   (place-fret 5 3 1)
%                                   (place-fret 4 5 2)
%                                   (place-fret 3 5 3)
%                                   (place-fret 2 5 4)
%                                   (place-fret 1 3 1)
%                                   (barre 5 1 3))
%        }
%      }
%    }



% end of include file /biscuit-fretboards-style.ly


