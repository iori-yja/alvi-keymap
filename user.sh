#!/usr/bin/env sh

cd $(dirname $0)/symbols

setxkbmap alvi -option -print | xkbcomp -I. - $DISPLAY
