# Prints a wide sectional banner.
# @param $1 Banner title.
banner()
{
    # Get terminal column width.
    local cols
    cols=$(tput cols 2>/dev/null || echo 80)

    printf '\n\033[1;35m' # Purple.

    printf '%*s\n' "$cols" '' | tr ' ' '='
    printf '%s\n' "$1"
    printf '%*s\n' "$cols" '' | tr ' ' '='

    printf '\033[0m\n' # Reset.
}
