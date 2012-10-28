[ -z "$PS1" ] && return

ACTIVE_SHRC=$ACTIVE_SHRC:'DROPBOX'   
export ACTIVE_SHRC

type AppendPath &>/dev/null
if [ $? -eq 0 ]; then
  AppendPath ~/Dropbox/code/bash 
fi
