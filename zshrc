# If you come from bash you might have to change your $PATH.
export PATH="$HOME/.local/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="bureau"

# Idk my default sort order is crap.
export LC_COLLATE=C

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Idk my default sort order is crap.
export LC_COLLATE=C
export LANG=en_US.UTF-8

# Directory sizes
alias duf='du -sk * | sort -n | while read size fname; do for unit in k M G T P E Z Y; do if [ $size -lt 1024 ]; then echo -e "${size}${unit}\t${fname}"; break; fi; size=$((size/1024)); done; done'
alias duf2='du -sk * | sort -n | perl -ne '\''($s,$f)=split(m{\t});for (qw(K M G)) {if($s<1024) {printf("%.1f",$s);print "$_\t$f"; last};$s=$s/1024}'\'

# History
export HISTSIZE=500000
export SAVEHIST=500000

alias df='df -h'
alias mv='mv -v'
alias rm='rm -v'
alias cp='cp -v'
alias grep='grep -n --color=auto'
alias less='less -N'
alias egrep="egrep --color=auto"
#alias ls='ls -lAh --group-directories-first --color=always'
alias ls='eza -lAh --group-directories-first'

setopt nobanghist
setopt nocaseglob
