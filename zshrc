# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/bjourne/.oh-my-zsh"

ZSH_THEME="bureau"

# Idk my default sort order is crap.
export LC_COLLATE=C

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Idk my default sort order is crap.
export LC_COLLATE=C
export LANG=en_US.UTF-8

alias df='df -h'
alias mv='mv -v'
alias rm='rm -v'
alias cp='cp -v'
alias grep='grep -n'
alias less='less -N'
#alias ls='ls -lAh --group-directories-first --color=always'
alias ls='eza -lAh --group-directories-first'

setopt nobanghist
setopt nocaseglob
