#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

eval "$(fnm env --use-on-cd)"

# Created by `pipx` on 2024-06-18 19:51:59
export PATH="$PATH:/home/ian/.local/bin"
