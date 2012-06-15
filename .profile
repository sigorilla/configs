#!bash

if [ -f ~/.bashrc ]; then
   . ~/.bashrc
fi

export LESSCHARSET=utf-8
export GREP_OPTIONS="-r --exclude-dir=.git --exclude-dir=.svn"
export EDITOR=vim
# export PS1='[\u@\h \w$(__git_ps1 " (%s)")]\$ '

# Aliases
alias ls='ls -G'
alias surl='svn info | grep URL'
alias svst='svn st --ignore-externals | grep -v ^X'
alias dch='dch --distributor debian'
alias debrelease='if [ -e dupload.conf ]; then debrelease -c --nomail; else debrelease --nomail; fi'
alias make='make -B'
alias less='less -R'
alias ducks="du -cks * | sort -rn | head -n11"
alias gr='[ ! -z `git rev-parse --show-cdup` ] && cd `git rev-parse --show-cdup || pwd`'
alias vim='vim -p'
sdiff() {
    svn diff --no-diff-deleted $@ | colordiff | less -SR
}

# For debuild
export DEBFULLNAME="Alexander Tarmolov"
export DEBEMAIL=hevil@yandex-team.ru
export EMAIL=hevil@yandex-team.ru

# Use local bin before
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
if [ -d ~/bin ] ; then
    PATH=~/bin:"${PATH}"
fi
