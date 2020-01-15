[[ $- != *i* ]] && return

shopt -s autocd

PS1="\[\e[1;32m\]\u@\h\[\e[m\] \[\e[0;33m\]\w\[\e[m\] "

export ALTERNATE EDITOR=""
export EDITOR="emacsclient -c -a emacs"
export VISUAL="emacsclient -c -a emacs"

alias ls='ls --color=auto'
alias py='python3.7'
alias pip='pip3'


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/mario/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/mario/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/mario/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/mario/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

