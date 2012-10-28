[ -z "$PS1" ] && return

ACTIVE_SHRC=$ACTIVE_SHRC:'TMUX'   
export ACTIVE_SHRC

# tmux specific config
if [ ! -z "$TMUX" ]; then
    # create a shortcut for 'tmux new-window'
    alias t='tmux new-window'
    # Lauch all ssh in new screens
    ssh() {
        COMMAND=$( echo "ssh $@" )
        tmux new-window -n ssh "$COMMAND"
    }
fi
