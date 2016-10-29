[ -z "$PS1" ] && return

ACTIVE_SHRC=$ACTIVE_SHRC:'LINUX'   
export ACTIVE_SHRC

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000


if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


#if [ "$PS1" ]; then
#    xmodmap -e "remove lock = Caps_Lock" >> /dev/null 2>&1
#    xmodmap -e "add shift = Caps_Lock" >> /dev/null 2>&1
#fi

#export PS1='\[\033[01;32m\]\u \[\033[01;36m\]\h\[\033[01;34m\] \W `case $? in 0 ) echo -n "\[\033[01;32m\]:)";;1 ) echo -n "\[\033[01;31m\];(";;* ) echo -n "\[\033[01;36m\]%(";;esac`\[\033[00m\] '




# STUFF RELATED TO THE less COMMAND
if [ -x /usr/share/source-highlight/src-hilite-lesspipe.sh ]; then 
    export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
    export LESS=$LESS' -R '
else
    export LESS='-erX'
fi
 
# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

