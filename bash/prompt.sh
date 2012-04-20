##
# Command prompt with git baked in
#
# Inspired by: https://github.com/mathiasbynens/dotfiles/blob/master/.bash_prompt
##

function is_git_dirty()
{
    if [ ! "$(git status 2> /dev/null | tail -n1)" = "nothing to commit (working directory clean)" ]
    then
        echo "*"
    fi
}

function parse_git_branch()
{
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ (\1$(is_git_dirty))/"
}

export PS1="\u@\h: \W\$(parse_git_branch)> "
