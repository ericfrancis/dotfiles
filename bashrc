#!/bin/bash

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

if command -v tmux >/dev/null; then
  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
fi

export EDITOR='vim'

# Any completions you add in ~/.bash_completion are sourced last.
[[ -f /etc/bash_completion ]] && . /etc/bash_completion

# Interactive operation...
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Default to human readable figures
alias df='df -h'
alias du='du -h'

alias less='less -r'                          # raw control characters
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour

# shortcuts for different directory listings
alias ls='ls -hF --color=tty'
alias ll='ls -la'
alias la='ls -A'
alias l='ls -CF'
