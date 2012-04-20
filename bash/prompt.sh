##
# Pretty Command prompt
#
# Inspired by: https://github.com/mathiasbynens/dotfiles/blob/master/.bash_prompt
##

export MAGENTA="\033[1;31m"
export ORANGE="\033[1;33m"
export GREEN="\033[1;32m"
export PURPLE="\033[1;35m"
export WHITE="\033[1;37m"
export RESET="\033[m"

function is_git_dirty()
{
    if [ ! "$(git status 2> /dev/null | tail -n1)" = "nothing to commit (working directory clean)" ]
    then
        echo "*"
    fi
}

function parse_git_branch()
{
    if [ -n "$(git branch 2>/dev/null)" ]; then
        git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(is_git_dirty))/"
    fi
}

export PS1="\[${ORANGE}\]\u@\h\[${WHITE}\] \[${GREEN}\]\W \[${PURPLE}\]\$(parse_git_branch)\[${WHITE}\]> \[${RESET}\]"
