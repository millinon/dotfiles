# .bashrc

case $- in
    *i*) ;;
    *) return;;
esac

# read global config
for i in profile bash_completion; do
    if [ -f "/etc/$i" ]; then
        . "/etc/$i"
    fi
done

# read local config
for i in .bash_ps1 .bash_aliases; do
    if [ -f "$HOME/$i" ]; then
        . "$HOME/$i"
    fi
done

if [ -d "$HOME/bin" ]; then
    export PATH=$PATH:$HOME/bin:.
fi

export EDITOR=vim
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
shopt -s globstar

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

ifind()
{
    case "$#" in
        1)
            find . -iname "$1"
            ;;
        2)
            find "$2" -iname "$1"
            ;;
        *)
            echo "Usage: ifind <iname> [<dir>]"
            ;;
    esac
}
