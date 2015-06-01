# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
elif [ -f /etc/bash.bashrc ]; then
	. /etc/bash.bashrc
fi

. ~/.bash_ps1.sh

export TERM=xterm-256color
export EDITOR=vim

export GOROOT=$HOME/go
export GOPATH=$HOME/gocode
export PATH=$PATH:~/bin:.

# User specific aliases and functions

alias ..='cd ..'
