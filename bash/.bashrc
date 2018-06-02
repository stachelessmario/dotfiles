[[ $- != *i* ]] && return

shopt -s autocd

PS1="\[\e[32m\]\u@\h\[\e[m\] \[\e[34m\]\w\[\e[m\] "

export ALTERNATE EDITOR=""
export EDITOR="emacsclient -c -a emacs"
export VISUAL="emacsclient -c -a emacs"

alias ls='ls --color=auto'
alias v='vim'
alias e='emacsclient -create-frame --alternate-editor=""'
alias p='pacaur'
