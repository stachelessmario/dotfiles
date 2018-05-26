[[ $- != *i* ]] && return

set -o vi
shopt -s autocd # omit cd when entering a path

PS1="\e[32m\u@\h:\e[97m\w\e[32m\\$\e[m "

bind 'set show-all-if-ambiguous on'
bind 'TAB: menu-complete'
#bind '"\ek": history-search-backward'
#bind '"\ej": history-search-forward'

alias ls='ls --color=auto'
alias v='vim'
alias e='emacs --no-window-system'
alias p='pacaur'
