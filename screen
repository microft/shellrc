[ -z "$PS1" ] && return

ACTIVE_SHRC=$ACTIVE_SHRC:'SCREEN'   
export ACTIVE_SHRC

# screen specific config
if [ ! -z "$STY" ]; then
    # create a shortcut for screen
    alias s='screen'
    # Lauch all ssh in new screens
    #alias ssh='screen -t ssh ssh'
    ssh() {
        screen -t $1 ssh $@
    }
fi

