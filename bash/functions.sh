##
# Various utility functions
##

# Load the PWD's .env file if it exists
function maybe_env()
{
    if [ -f "$PWD/.env" ]; then
        source "$PWD/.env"
    fi
}


# Set up environments and history on cd
function better_cd()
{
    if builtin cd "$@"; then
        maybe_env
        setup_history
    fi
}

# Unalias things and eat errors, useful in .env files
function safe_unalias()
{
    unalias "$@" &>/dev/null
}

