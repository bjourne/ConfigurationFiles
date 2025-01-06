# Copyright (C) 2024 Björn A. Lindqvist <bjourne@gmail.com>

# Hidden files is a terrible concept.
setopt globdots
setopt nobanghist

# Make some matching case insensitive
setopt nocaseglob
setopt nocasematch

# XDG stuff
export XDG_CONFIG_HOME=~/.config

zstyle ':omz:update' frequency 64

export PATH="$HOME/.local/bin:$PATH"

# Path to my oh-my-zsh installation.
export ZSH="$HOME/.config/oh-my-zsh"

ZSH_THEME="bureau"

source $ZSH/oh-my-zsh.sh

# Directory sizes, (ls --total-size works better)
alias tuf='du -sk * | sort -n | while read size fname; do for unit in k M G T P E Z Y; do if [ $size -lt 1024 ]; then echo -e "${size}${unit}\t${fname}"; break; fi; size=$((size/1024)); done; done'
alias tuf2='du -sk * 2>/dev/null | sort -n | perl -ne '\''($s,$f)=split(m{\t});for (qw(K M G)) {if($s<1024) {printf("%7.1f",$s);print "$_   $f"; last};$s=$s/1024}'\'

# History
export HISTFILE=~/.local/state/zsh_history
export HISTSIZE=500000
export HIST_STAMPS="yyyy-mm-dd"
export SAVEHIST=500000

# Programs keeping configuration in environment variables are stupid.
LESS="-N -F -R"

# Stuff to make stupid programs obey XDG spec.
mkdir -p ~/.config/ipython
mkdir -p ~/.config/git
touch ~/.config/git/config
export MPLAYER_HOME=~/.config/mplayer



alias cp='cp -v'
alias df='df -h'
alias diff='diff --color=always -u'
alias egrep="egrep --color=auto"
alias grep='grep -n --color=auto'
alias history='fc -i -l -D -1000'
alias less='less -N -F'
alias ls='eza -lA --group-directories-first --time-style=relative'
alias mv='mv -v'
alias pstree='pstree -T -p -h -C age'
alias rm='rm -v'
alias df='duf'
