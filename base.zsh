[ -z "$PS1" ] && return

ACTIVE_SHRC='BASE'
export ACTIVE_SHRC

# Emulate tcsh's backward-delete-word
tcsh-backward-delete-word () {
    #local WORDCHARS="${WORDCHARS:s#/#}"
    #local WORDCHARS='*?_[]~\/!#$%^<>|`@#$%^*()+?'
    local WORDCHARS="${WORDCHARS:s#/#}"
    zle backward-delete-word
}

WORDCHARS="${WORDCHARS:s#/#}"
#zle -N tcsh-backward-delete-word
# for escape backspace (delete a word) behavior similar to tcsh
#bindkey '\e^?' tcsh-backward-delete-word

