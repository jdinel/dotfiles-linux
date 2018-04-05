alias df='df -h'
alias diff='colordiff'
alias dmesg='sudo dmesg -T'
alias docker='sudo docker'
alias egrep='LC_ALL="C" ionice -c3 nice egrep --color=auto --line-buffered'
alias fgrep='LC_ALL="C" ionice -c3 nice fgrep --color=auto --line-buffered'
alias gencsr='openssl req -newkey rsa:2048 -nodes -sha256 -keyout privkey.pem -out myserver.csr'
alias gpge='gpg --symmetric --armor --cipher-algo AES256'
alias grep='LC_ALL="C" ionice -c3 nice grep --color=auto --line-buffered'
alias h='history'
alias ipextract="grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}'"
alias journalctl='sudo journalctl'
alias less='less -XR'
alias ll='ls -l'
alias lower="tr '[:upper:]' '[:lower:]'"
alias ls='ls --color=yes -Fh'
alias lxcl='lxc list -c ns4caS'
alias macextract="grep -Eoi '([0-9A-F]{2}[:-]){5}([0-9A-F]{2})'"
alias psa="ps waux | egrep -v '\[.*\]'"
alias pstree="pstree -aplU"
alias pwgen="apg -MSNCL -m14"
alias sinstall='sudo apt install'
alias spurge='sudo apt purge'
alias sremove='sudo apt autoremove'
alias ssearch='apt search'
alias ssh-insecure='ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'
alias strcc='sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g"'
alias sup='sudo apt update && sudo apt upgrade'
alias systemctl='sudo systemctl'
alias unpad="perl -pe 's/\b0*(?=\d)//g'"
alias upper="tr '[:lower:]' '[:upper:]'"
alias vi='nvim'
alias viewcert='openssl x509 -noout -text -in'
alias viewcrl='openssl crl -inform DER -text -noout -in'
alias viewcsr='openssl req -noout -text -in'
alias viewp12='openssl pkcs12 -info -nodes -in'
alias vim='nvim'
alias webshare='python -m SimpleHTTPServer'
