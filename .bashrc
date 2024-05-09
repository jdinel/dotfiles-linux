# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

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

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

GREP_COLORS='ms=01;33:mc=01;33:sl=:cx=:fn=35:ln=32:bn=32:se=36'
PAGER="less -X"
PATH=$PATH:/sbin:/usr/sbin:~/bin:~/.local/bin
complete -cf sudo
complete -cf man
umask 077
eval "`dircolors ~/.dircolors`"

PS1="\[$(tput bold)\]\[$(tput setaf 166)\]\u\[$(tput setaf 230)\]@\[$(tput setaf 166)\]\h \[$(tput setaf 33)\]\w \[$(tput setaf 64)\]$ \[$(tput sgr0)\]"

# colorize manpages with batcat
export MANPAGER="sh -c 'col -bx | batcat -l man -p'"
