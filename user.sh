#!/usr/bin/env sh

cd $(dirname $0)/symbols

# use option 'alvi-ctrl' for standard keyboard (no Caps next to A)
setxkbmap alvi $1 -option -print | xkbcomp -I. - $DISPLAY
