##
# Aliases
##

alias refresh="source ~/.bash_profile"

if [ ! 'Darwin' = $(uname) ]; then
    alias ls="ls -1 --color"
    alias l="ls -1 --color"
    alias la="ls -al --color"
    alias lg="ls -al --color | grep "
else
    alias ls="ls -1"
    alias l="ls -1"
    alias la="ls -al"
    alias lg="ls -al | grep "
    alias flushdns="dscacheutil -flushcache"
fi

alias ..="cd .."
alias ...="cd ../.."
alias gits="git status"
alias hosts="sudo vim /etc/hosts"
alias cd="better_cd"
