#!/usr/bin/env sh

# use option 'alvi-ctrl' for standard keyboard (no Caps next to A)
setxkbmap alvi $1 -option -print | xkbcomp -I. - $DISPLAY
