[ -z "$PS1" ] && return
ACTIVE_SHRC=$ACTIVE_SHRC:'LINUX'   
export ACTIVE_SHRC

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

#bindkey '5D' emacs-backward-word
bindkey ';5D' emacs-backward-word
#bindkey '5C' emacs-forward-word
bindkey ';5C' emacs-forward-word

alias ack='ack-grep -r'
