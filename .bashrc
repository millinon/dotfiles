# .bashrc

case $- in
    *i*) ;;
    *) return;;
esac

export EDITOR=vim
export TERM="screen-256color"
export GOROOT=$HOME/go
export GOPATH=$HOME/gocode

set -o notify
set -o noclobber
set -o ignoreeof

shopt -s cdspell
shopt -s checkwinsize
shopt -s histappend
shopt -s checkjobs
shopt -s execfail

if [ -f /usr/bin/dircolors ]; then
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi

if [ -x /usr/bin/lesspipe ]; then
    eval "$(SHELL=/bin/sh /usr/bin/lesspipe)"
fi

mcd ()
{
	mkdir -pv -- "$1" &&
	cd -P -- "$1"
}
