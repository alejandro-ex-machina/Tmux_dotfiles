#!/bin/bash

if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# export PATH="~/src/quotes:$PATH"

cl cat ~/src/asciimages/totenkopf.txt  && echo && echo && neofetch --off && echo && echo &&  py3 ~/src/quotes/getquote.py && echo && echo