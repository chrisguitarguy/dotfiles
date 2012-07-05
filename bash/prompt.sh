##
# Command prompt with git baked in
#
# Inspired by:
# https://github.com/mathiasbynens/dotfiles/blob/master/.bash_prompt
# https://github.com/ymendel/dotfiles/blob/master/shell/prompt.bash
##

is_git_dirty()
{
    if [ ! "$(git status 2> /dev/null | tail -n1)" = "nothing to commit (working directory clean)" ]
    then
        echo "*"
    fi
}

git_current_branch()
{
    branch=$(git branch --no-color 2>/dev/null | awk '/^\* /{print $2}')
    if [ "(no" = "$branch" ]; then
        branch=$(git name-rev --name-only HEAD 2>/dev/null)
    fi
    echo $branch
}

git_display()
{
    export GIT_DIRTY=$(is_git_dirty)
    git_current_branch | awk '{if ($1) print " (" $1 ENVIRON["GIT_DIRTY"] ")"}'
}

export PS1="\u@\h: \W\$(git_display)> "
