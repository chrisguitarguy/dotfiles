##
# History Preferences and functions
##
shopt -s histappend

export HISTFILE="$HOME/.bash_history.d$PWD/bash_history.txt"
export HISTIGNORE="ls:l:ls:la:cd:cd -:exit:date:* --help"
export PROMT_COMMAND="history -a; history -n; ${PROMPT_COMMAND:-:}"

setup_history()
{
    history -w # write history
    local HISTDIR="$HOME/.bash_history.d$PWD" # history folder for this dir
    if [ ! -d "$HISTDIR" ]; then # history directory doesn't exist. Make it
        mkdir -p "$HISTDIR"
    fi
    export HISTFILE="$HISTDIR/bash_history.txt" # new history file
    history -c # clear memory
    history -r # read from the new history file
}
