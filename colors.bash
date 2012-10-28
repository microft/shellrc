[ -z "$PS1" ] && return

ACTIVE_SHRC=$ACTIVE_SHRC:'COLORS'
export ACTIVE_SHRC

# We should use \033 instead of \e because of 
# 'echo' command restrictions in OSX

# Reset
Color_Off='\033[0m'       # Text Reset

# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

RCOLORS=( $Black $Red $Green $Yellow $Blue $Purple $Cyan $White )

# Bold
BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White

BCOLORS=( $BBlack $BRed $BGreen $BYellow $BBlue $BPurple $BCyan $BWhite )

# Underline
UBlack='\033[4;30m'       # Black
URed='\033[4;31m'         # Red
UGreen='\033[4;32m'       # Green
UYellow='\033[4;33m'      # Yellow
UBlue='\033[4;34m'        # Blue
UPurple='\033[4;35m'      # Purple
UCyan='\033[4;36m'        # Cyan
UWhite='\033[4;37m'       # White

UCOLORS=( $UBlack $URed $UGreen $UYellow $UBlue $UPurple $UCyan $UWhite )

# Background
On_Black='\033[40m'       # Black
On_Red='\033[41m'         # Red
On_Green='\033[42m'       # Green
On_Yellow='\033[43m'      # Yellow
On_Blue='\033[44m'        # Blue
On_Purple='\033[45m'      # Purple
On_Cyan='\033[46m'        # Cyan
On_White='\033[47m'       # White

BGCOLORS=( $On_Black $On_Red $On_Green $On_Yellow $On_Blue $On_Purple $On_Cyan $On_White )

# High Intensty
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White

ICOLORS=( $IBlack $IRed $IGreen $IYellow $IBlue $IPurple $ICyan $IWhite )

# Bold High Intensty
BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White

BICOLORS=( $BIBlack $BIRed $BIGreen $BIYellow $BIBlue $BIPurple $BICyan $BIWhite )

# High Intensty backgrounds
On_IBlack='\033[0;100m'   # Black
On_IRed='\033[0;101m'     # Red
On_IGreen='\033[0;102m'   # Green
On_IYellow='\033[0;103m'  # Yellow
On_IBlue='\033[0;104m'    # Blue
On_IPurple='\033[10;95m'  # Purple
On_ICyan='\033[0;106m'    # Cyan
On_IWhite='\033[0;107m'   # White

BGICOLORS=( $On_IBlack $On_IRed $On_IGreen $On_IYellow $On_IBlue $On_IPurple $On_ICyan $On_IWhite )

#COLORS=( $Color_Off $Black $Red $Green $Yellow $Blue $Purple $Cyan $White $BBlack $BRed $BGreen $BYellow $BBlue $BPurple $BCyan $BWhite $UBlack $URed $UGreen $UYellow $UBlue $UPurple $UCyan $UWhite $On_Black $On_Red $On_Green $On_Yellow $On_Blue $On_Purple $On_Cyan $On_White $IBlack $IRed $IGreen $IYellow $IBlue $IPurple $ICyan $IWhite $BIBlack $BIRed $BIGreen $BIYellow $BIBlue $BIPurple $BICyan $BIWhite $On_IBlack $On_IRed $On_IGreen $On_IYellow $On_IBlue $On_IPurple $On_ICyan $On_IWhite )

Fg_Colors=( ${RCOLORS[@]} ${ICOLORS[@]} )

Bg_Colors=( ${BGCOLORS[@]} ${BGICOLORS[@]} )

COLORS=( $Color_Off ${RCOLORS[@]} ${BCOLORS[@]} ${UCOLORS[@]} ${BGCOLORS[@]} ${ICOLORS[@]} ${BICOLORS[@]} ${BGICOLORS[@]} )

