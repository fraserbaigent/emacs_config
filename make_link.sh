#!/bin/bash +x

EMACSDIR=~/.emacs.d/
SRC=$(pwd)
LINKS="snippets init.el elisp themes"
for l in $LINKS
do
    rm -rf ${EMACSDIR}${l}
    ln -s ${SRC}/${l} ${EMACSDIR}${l} 
done
