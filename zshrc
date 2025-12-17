# Copyright (C) 2024-2025 Björn A. Lindqvist <bjourne@gmail.com>

########################################################################
# Stuff to make stupid programs obey XDG spec.
########################################################################

export XDG_CONFIG_HOME=~/.config

mkdir -p ~/.config/ipython
mkdir -p ~/.config/git
touch ~/.config/git/config
export MPLAYER_HOME=~/.config/mplayer
export PYTHON_HISTORY=~/.local/state/python_history

export TEXMFHOME=~/.local/share/texmf
export TEXMFVAR=~/.cache/texlive/texmf-var
export TEXMFCONFIG=~/.config/texlive/texmf-config

export WGETRC="${HOME}/.config/wgetrc"
echo hsts-file \= ~/.cache/wget-hsts > "$XDG_CONFIG_HOME/wgetrc"

# Dont put shit in my ~
export ZSH_COMPDUMP="$HOME/.cache/zcompdump-$HOST"


########################################################################
# Random zsh config
########################################################################

# Hidden files is a terrible idea.
setopt globdots
setopt nobanghist

# Make some matching case insensitive
setopt nocaseglob
setopt nocasematch


zstyle ':omz:update' frequency 64

export PATH="$HOME/.local/bin:$PATH"

# Path to my oh-my-zsh installation.
export ZSH="$HOME/.config/oh-my-zsh"


export ZSH_THEME="bureau"

source $ZSH/oh-my-zsh.sh

# Directory sizes, (ls --total-size works better)
alias tuf='du -sk * | sort -n | while read size fname; do for unit in k M G T P E Z Y; do if [ $size -lt 1024 ]; then echo -e "${size}${unit}\t${fname}"; break; fi; size=$((size/1024)); done; done'
alias tuf2='du -sk * 2>/dev/null | sort -n | perl -ne '\''($s,$f)=split(m{\t});for (qw(K M G)) {if($s<1024) {printf("%7.1f",$s);print "$_   $f"; last};$s=$s/1024}'\'

# History
# setopt histignorealldups
# setopt histsavenodups

setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS

export HISTFILE=~/.local/state/zsh_history
export HISTSIZE=1000000
export HIST_STAMPS="yyyy-mm-dd"
export SAVEHIST=1000000

########################################################################
# Other program customization
########################################################################

# Programs keeping configuration in environment variables are stupid.
export LESS="-N -F -R"
export NODE_OPTIONS='--disable-warning=ExperimentalWarning'


alias cp='cp -v'
alias df='df -h'
alias diff='diff --color=always -u'
alias egrep="egrep --color=auto"
alias grep='grep -n --color=auto'
alias history='fc -i -l -D 0'
alias less='less -N -F'
alias ls='eza -lA --group-directories-first --time-style=relative'
alias mv='mv -v'
alias nano='nano -l'
alias pstree='pstree -T -p -h -C age'
alias rm='rm -v'
alias df='duf'
