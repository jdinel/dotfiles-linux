# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Let's get crazy
unset HISTFILE

# But let's stay safe
set -o noclobber

# Set preferred editor, nvim if installed, plan vi(m) if not
which nvim > /dev/null 2>&1 && EDITOR=nvim || EDITOR=vi
which nvim > /dev/null 2>&1 && VISUAL=nvim || VISUAL=vi
which nvim > /dev/null 2>&1 && SUDO_EDITOR=nvim || SUDO_EDITOR=vi

# Shortened path in prompt
PROMPT_DIRTRIM=2

# Prevent gnu less from writing a history file
export LESSHISTFILE=-

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
which lesspipe > /dev/null 2>&1 && eval "$(SHELL=/bin/sh lesspipe)"
which lesspipe.sh > /dev/null 2>&1 && eval "$(SHELL=/bin/sh lesspipe.sh)"

alias diff='diff --color=auto'
alias df='df -h'
alias gencsr='openssl req -newkey rsa:2048 -nodes -sha256 -keyout privkey.pem -out myserver.csr'
alias h='history'
alias less='less -XR'
alias ll='ls -l'
alias lower="tr '[:upper:]' '[:lower:]'"
alias ls='ls --color=yes -Fh'
alias psa="ps waux | egrep -v '\[.*\]'"
alias upper="tr '[:lower:]' '[:upper:]'"
alias viewcert='openssl x509 -noout -text -in'
alias viewcrl='openssl crl -inform DER -text -noout -in'
alias viewcsr='openssl req -noout -text -in'
alias viewp12='openssl pkcs12 -info -nodes -in'

# Load local aliases as well
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

GREP_COLORS='ms=01;33:mc=01;33:sl=:cx=:fn=35:ln=32:bn=32:se=36'
PAGER="less -XRF"
PATH=$PATH:~/bin
complete -cf sudo
complete -cf man
umask 077
eval "`dircolors ~/.dircolors`"

PS1="\[$(tput bold)\]\[$(tput setaf 166)\]\u\[$(tput setaf 230)\]@\[$(tput setaf 166)\]\h \[$(tput setaf 33)\]\w \[$(tput setaf 64)\]$ \[$(tput sgr0)\]"

# colorize manpages with batcat if installed
which batcat > /dev/null 2>&1 && export MANPAGER="sh -c 'col -bx | batcat -l man -p'"
which bat > /dev/null 2>&1 && export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANROFFOPT="-c"

# run starship if installed
which starship > /dev/null 2>&1 && eval "$(starship init bash)"
