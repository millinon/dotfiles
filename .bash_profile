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
