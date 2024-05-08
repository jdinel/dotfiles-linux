alias bcat='batcat'
alias diff='diff --color=auto'
alias df='df -h'
alias dmesg='sudo dmesg -T'
alias gencsr='openssl req -newkey rsa:2048 -nodes -sha256 -keyout privkey.pem -out myserver.csr'
alias gpge='gpg --symmetric --armor --cipher-algo AES256'
alias h='history'
alias ipextract="grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}'"
alias less='less -XR'
alias ll='ls -l'
alias lower="tr '[:upper:]' '[:lower:]'"
alias ls='ls --color=yes -Fh'
alias macextract="grep -Eoi '([0-9A-F]{2}[:-]){5}([0-9A-F]{2})'"
alias psa="ps waux | egrep -v '\[.*\]'"
alias ssh-insecure='ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'
alias upper="tr '[:lower:]' '[:upper:]'"
alias vi='nvim'
alias viewcert='openssl x509 -noout -text -in'
alias viewcrl='openssl crl -inform DER -text -noout -in'
alias viewcsr='openssl req -noout -text -in'
alias viewp12='openssl pkcs12 -info -nodes -in'
alias vim='nvim'
