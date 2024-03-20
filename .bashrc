# Check for an interactive session
[ -z "$PS1" ] && return

command stty -ixon

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=""
HISTFILESIZE=""
HISTTIMEFORMAT="%y/%m/%d %T "
#HISTIGNORE="ssh *:scp *:sftp *"

# Editor
EDITOR=nvim
VISUAL=nvim
SUDO_EDITOR=nvim

# Shortened path in prompt
PROMPT_DIRTRIM=2

# Prevent gnu less from writing a history file
export LESSHISTFILE=-

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

GREP_COLORS='ms=01;33:mc=01;33:sl=:cx=:fn=35:ln=32:bn=32:se=36'
PAGER="less -X"
PATH=$PATH:/sbin:/usr/sbin:~/bin:home/joel/.local/bin
complete -cf sudo
complete -cf man
umask 077
eval "`dircolors ~/.dircolors`"

case $TERM in
    xterm)
        TERM=xterm-256color;
        ;;
esac

PS1="\[$(tput bold)\]\[$(tput setaf 166)\]\u\[$(tput setaf 230)\]@\[$(tput setaf 166)\]\h \[$(tput setaf 33)\]\w \[$(tput setaf 64)\]$ \[$(tput sgr0)\]"

# Local functions
settitle() {
    printf "\033k$1\033\\"
}

# ssh function to rename tmux windows
ssh() {
if [ -n "$TMUX" ]
then
    settitle "$*"
    command ssh "$@"
    settitle "bash"
else
    command ssh "$@"
fi
}

# colorize manpages with batcat
export MANPAGER="sh -c 'col -bx | batcat -l man -p'"

# eval "$(starship init bash)"

#if [ -f `which powerline-daemon` ]; then
#  powerline-daemon -q
#  POWERLINE_BASH_CONTINUATION=1
#  POWERLINE_BASH_SELECT=1
#  . /usr/share/powerline/bindings/bash/powerline.sh
#fi
