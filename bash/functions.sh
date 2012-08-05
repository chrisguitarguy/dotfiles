##
# Various utility functions
##

# Load the PWD's .env file if it exists
maybe_env()
{
    local env="$PWD/.env"
    if [ -f "$env" ]; then
        if [ -z "$CURRENT_ENV" ]; then
            # no current environment, source .env file
            builtin source "$env"
            export CURRENT_ENV="$env"
        elif [ ! "$CURRENT_ENV" = "$env" ]; then
            # we have a current environment setup
            # the environ we have setup is not this one
            # check to see if we have a deactivate function to run
            if [ "$(type -t deactivate)" = "function" ]; then
                deactivate
            fi
            builtin source "$env"
            export CURRENT_ENV="$env"
        fi
    fi
}


# Set up environments and history on cd
better_cd()
{
    if builtin cd "$@"; then
        maybe_env
        setup_history
    fi
}

# Unalias things and eat errors, useful in .env files
safe_unalias()
{
    unalias "$@" &>/dev/null
}

# make a cd into it in one command
mkcd()
{
    mkdir "$1" && cd "$1"
}
