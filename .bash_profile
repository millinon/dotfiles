# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022


if [ -z ${TMUX+x} ] && [ -z ${DISABLE_TMUX+x} ]; then
    if ! hash tmux 2>/dev/null 2>&1; then
        echo "tmux not found; set \$DISABLE_TMUX to disable this message"
    elif tmux has-session -t "main_shell" 2>/dev/null; then
        exec tmux a -t "main_shell"
    else
        exec tmux new -s "main_shell"
    fi
fi


if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi
