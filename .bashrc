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

export PATH=/bin:/sbin:/usr/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/usr/games:/usr/local/games:~/bin:.

alias ..='cd ..'

# start tmux shell
if [ -z ${TMUX+x} ]; then
	if tmux has-session -t "main_shell" 2>/dev/null; then
		exec tmux a -t "main_shell"
	else
		tmux new -s "main_shell"
	fi
fi

