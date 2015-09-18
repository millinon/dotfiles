export TERM="screen-256color"

if [ -z ${TMUX+x} ] && [ -z ${DISABLE_TMUX+x} ]; then
	if [ ! hash tmux 2>/dev/null 2>&1 ]; then
		echo "tmux not found; set \$DISABLE_TMUX to disable this message"
	elif tmux has-session -t "main_shell" 2>/dev/null; then
		exec tmux a -t "main_shell"
	else
		exec tmux new -s "main_shell"
	fi
fi

if [ -f /etc/bashrc ]; then
	. /etc/bashrc
elif [ -f /etc/bash.bashrc ]; then
	. /etc/bash.bashrc
fi

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

if [ -f ~/.bash_ps1 ]; then
    . ~/.bash_ps1
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

export PATH=$PATH:$HOME/bin:.
