#!/bin/bash
#
alias       ..='cd ..'
alias      ...='cd ../..'
alias     ....='cd ../../..'
alias    .....='cd ../../../..'
alias       \~='cd \~'
#
alias       ls='ls --color=auto'                           
alias       ll='ls -lh --color=auto'
alias       la='ls -A --color=auto'
alias      lla='ls -lAh --color=auto'
alias        l='ls -CF --color=auto'
#
alias   update='pkg update && pkg upgrade -y'
alias  install='pkg install'
alias   search='pkg search'
alias   remove='pkg uninstall'
alias     list='pkg list-installed'
#
alias       gs='git status'
alias      gst='git status -sb'
alias       ga='git add'
alias      gaa='git add --all'
alias       gc='git commit -m'
alias      gca='git commit --amend'
alias       gp='git push'
alias      gpo='git push origin'
alias       gl='git pull'
alias      glo='git pull origin'
alias      cgb='git branch'
alias      gco='git checkout'
alias      gcb='git checkout -b'
alias     glog='git log --oneline --graph --decorate'
alias       gd='git diff'
alias      gds='git diff --staged'
#
alias       hg='history | grep'
alias        p='pwd'
alias        q='exit'
alias    quote='cl && echo && python ~/src/quotes/getquote.py --random  && echo'
alias     myip='curl ifconfig.me' # Show IP pública
alias     wget='wget -c' # reanudar descargas
alias    untar='tar -zxvf' # descomprimir tar.gz rápido
alias       py='python'
alias      py3='python3'
alias    pipup='pip install --upgrade pip'
alias     venv='python -m venv venv'
alias activate='source venv/bin/activate'
alias   please='sudo' # cuando te niega un comando xD
alias       cl='clear'
alias     path='echo $PATH | tr ":" "\n"' # ver el PATH línea por línea
