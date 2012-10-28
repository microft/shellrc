[ -z "$PS1" ] && return
[ -z "$COLORS" ] && return

ACTIVE_SHRC=$ACTIVE_SHRC:'TERM'   
export ACTIVE_SHRC

function smileyface
{
    case $? in 
    0 ) 
        echo -ne ":)"
    ;;
    1 ) 
        echo -ne ";("
    ;;* ) 
        echo -ne "%("
    ;;
    esac

return 0
}

function smileycolor
{
    X=$?
    case $X in 
    0 ) 
        echo -ne "$BGreen"
    ;;
    1 ) 
        echo -ne "$BRed"
    ;;* ) 
        echo -ne "$BCyan"
    ;;
    esac

return $X
}

if [ -z $CustomPS1 ]
then
#    numbers=`hostname | od -A n | head -n 1 | awk '{print $2}'` 
#    SUM=0
#    for n in $numbers; do
#        SUM=$(($SUM+$n))
#    done
#    NColors=`echo ${#COLORS[@]}`
#    SUM="$SUM%$NColors"
#    export HostnameColor=${COLORS[$SUM]}
#    [ -z "$HostnameColor" ] && export HostnameColor=$BWhite
#    export PS1="\[$BGreen\]\u \[$HostnameColor\]\h\[$Color_Off\] \[$BBlue\]\W \[\$(smileycolor)\]\$(smileyface) \[$Color_Off\]"
    
    data=`hostname | od -A n | head -n 1 ` 
    numbers=`echo $data | awk '{print $2}'` 
    SUM=0
    for n in $numbers; do
        SUM=$(($SUM+$n))
    done
    NColors=`echo ${#Fg_Colors[@]}`
    SUM="$SUM%$NColors"
    export HostnameFg=${Fg_Colors[$SUM]}

    numbers=`echo $data | awk '{print $3}'` 
    SUM=0
    for n in $numbers; do
        SUM=$(($SUM+$n))
    done
    NColors=`echo ${#Bg_Colors[@]}`
    SUM="$SUM%$NColors"
    export HostnameBg=${Bg_Colors[$SUM]}

    export PS1="\[$Purple\]\u \[$HostnameFg$HostnameBg\]\h\[$Color_Off\] \[$BBlue\]\W \[\$(smileycolor)\]\$(smileyface) \[$Color_Off\]"

fi


# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# All the dig info
function digga() {                                   
    dig +nocmd "$1" any +multiline +noall +answer
}

