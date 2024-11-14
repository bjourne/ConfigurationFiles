zstyle ':omz:update' frequency 64

# If you come from bash you might have to change your $PATH.
export PATH="$HOME/.local/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="bureau"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Directory sizes
alias duf='du -sk * | sort -n | while read size fname; do for unit in k M G T P E Z Y; do if [ $size -lt 1024 ]; then echo -e "${size}${unit}\t${fname}"; break; fi; size=$((size/1024)); done; done'
alias duf2='du -sk * 2>/dev/null | sort -n | perl -ne '\''($s,$f)=split(m{\t});for (qw(K M G)) {if($s<1024) {printf("%4.1f",$s);print "$_\t$f"; last};$s=$s/1024}'\'

# History
export HISTFILE=~/.local/state/zsh_history
export HISTSIZE=500000
export HIST_STAMPS="yyyy-mm-dd"
export SAVEHIST=500000

alias cp='cp -v'
alias df='df -h'
alias egrep="egrep --color=auto"
alias grep='grep -n --color=auto'ee
alias history='history -i'
alias less='less -N'
alias ls='eza -lAh --group-directories-first'
alias mv='mv -v'
alias rm='rm -v'
alias pstree='pstree -T -p -h -C age'

setopt nobanghist
setopt nocaseglob
