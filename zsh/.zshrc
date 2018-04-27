autoload -Uz compinit promptinit zmv
compinit
promptinit
zstyle ':completion:*' menu select
bindkey -v
KEYTIMEOUT=1

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey -M vicmd "k" up-line-or-beginning-search
bindkey -M vicmd "j" down-line-or-beginning-search

ZSH_THEME="powerlevel9k/powerlevel9k"
source  ~/.powerlevel9k/powerlevel9k.zsh-theme
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(history)
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
POWERLEVEL9K_VI_INSERT_MODE_STRING='I'
POWERLEVEL9K_VI_NORMAL_MODE_STRING='N'

DEFAULT_USER="thortl"

HISTSIZE=1000
HISTFILE=~/.zsh_history
SAVEHIST=1000

alias neofedch="neofetch --w3m /home/thortl/Pictures/mems/gondola/args.png"
alias v='vim'
alias p='pacaur'
alias ls='ls --color=auto'

# Rice man
man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}
