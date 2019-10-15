#!/usr/bin/env sh

FILE="$(dirname $0)/symbols/alvi"
TARGET="/usr/share/X11/xkb/symbols/alvi"

sudo --version > /dev/null 2>&1
if [[ $? -eq 0 ]]; then
	EXEC_ROOT=sudo
else
	EXEC_ROOT=doas
fi

if [[ -d "$(dirname ${TARGET})" ]]; then
	${EXEC_ROOT} cp ${FILE} ${TARGET}
fi
