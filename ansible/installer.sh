banner()
{
    local cols
    cols=$(tput cols 2>/dev/null || echo 80)

    printf '\n\033[1;35m'

    printf '%*s\n' "$cols" '' | tr ' ' '='
    printf '%s\n' "$1"
    printf '%*s\n' "$cols" '' | tr ' ' '='

    printf '\033[0m\n'
}
