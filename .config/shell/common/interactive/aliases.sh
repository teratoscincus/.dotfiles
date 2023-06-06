#!/usr/bin/env bash

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Add color to basic commands.
alias ls="ls -F --color=auto"
alias dir="dir --color=auto"
alias vdir="vdir --color=auto"
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

# Bash command aliases.
alias poweroff="sudo poweroff"
alias reboot="sudo reboot"

alias csb="clear; source $HOME/.config/shell/common/extras/greeter.sh"

alias ..="cd .."
alias c="clear"
alias ll="ls -AlFh"
alias la="ls -AF"
alias l="ls -CF"
alias cll="clear; ll"
alias mv="mv -iv"
alias rm="rm -iv"
alias cp="cp -iv"

alias gr="grep"

alias v="nvim"
alias v.="nvim ."

alias fzp="fzf --preview 'bat --color=always {}'"

alias xcc="xclip -selection clipboard"
alias tree="tree --dirsfirst -I '.git/|.gitignore|*_env/|__pycache__/|*.egg-info/|build/'"

# Terminal
alias another='xfce4-terminal --working-directory=$PWD'

# Input settings
alias keyus="setxkbmap -layout us -variant altgr-intl -option nodeadkeys"

# Manage dotfiles & other bare git repos.
alias dot="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias rice="/usr/bin/git --git-dir=$HOME/.rice --work-tree=$HOME"

# Scripts.
alias rp="python3 $HOME/repos/projects/reading_progress/reading_progress.py"
