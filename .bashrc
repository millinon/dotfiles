# .bashrc

export EDITOR=vim
export TERM="screen-256color"
export GOROOT=$HOME/go
export GOPATH=$HOME/gocode

export PATH=/bin:/sbin:/usr/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/usr/games:/usr/local/games:~/bin:.

set -o notify
set -o noclobber
set -o ignoreeof

shopt -s cdspell
shopt -s checkwinsize

#alias tmux="TERM=screen-256color-bce tmux"
alias ..='cd ..'
alias ll='ls -lhA'
alias g='grep'
alias l='less'
alias s='sed'

mcd ()
{
	mkdir -pv -- "$1" &&
	cd -P -- "$1"
}
