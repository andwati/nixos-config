#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

# bun completions
[ -s "/home/ian/.bun/_bun" ] && source "/home/ian/.bun/_bun"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ian/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ian/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/ian/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/ian/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup

export GPG_TTY=$(tty)
