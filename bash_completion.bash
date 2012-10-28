[ -z "$PS1" ] && return     
ACTIVE_SHRC=$ACTIVE_SHRC:'BASH_COMPLETION'
export ACTIVE_SHRC

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Add bash completion for my custom tunnel commands
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" tunnel rtunnel

