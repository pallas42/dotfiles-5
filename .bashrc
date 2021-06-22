#!/bin/bash

if [[ $- != *i* ]] ; then
        return
fi

if [ -e ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

export HISTSIZE=50000

bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

export PS1="\[\e[31m\]\[\e[m\]\[\e[41m\] \[\e[m\]\[\e[37;41m\]\u\[\e[m\]\[\e[41m\] \[\e[m\]\[\e[31;40m\]\[\e[m\]\[\e[37;40m\] \[\e[m\]\[\e[37;40m\]\w\[\e[m\]\[\e[40m\] \[\e[m\]\[\e[30m\]\[\e[m\] "

if [ -e /usr/share/fzf/key-bindings.bash ]; then
source /usr/share/fzf/key-bindings.bash
fi
