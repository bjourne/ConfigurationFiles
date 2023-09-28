# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/bjourne/.oh-my-zsh"

ZSH_THEME="kphoen"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Idk my default sort order is crap.
export LC_COLLATE=C

alias df='df -h'
alias mv='mv -v'
alias rm='rm -v'
alias cp='cp -v'
alias grep='grep -n'
alias ls='ls -lAh --group-directories-first --color=always'
