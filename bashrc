# Vim.
export EDITOR=vim

# Bash.
PS1='\[$(if [ "$?" -eq 0 ]; then printf "\033[37m"; else printf "\033[31m"; fi)\]$\[\033[0m\] '
HISTSIZE=10000
HISTFILESIZE=200000
alias gg='git grep -n'
alias gp='git push'
alias smd='pwd > $HOME/.config/cm-maindir'
alias cm='cd $(< $HOME/.config/cm-maindir) && pwd'
alias cg='cd $(git rev-parse --show-toplevel)' # https://blogboard.io/blog/knowledge/cd-to-git-root/
alias cs="cd ~/src"
alias py="python"
alias tree='tree --gitignore'
alias shutdown="echo Hmmmmmmm."
alias shutdown_fr="shutdown"
export LD_LIBRARY_PATH=$HOME/local/usr/lib/
export PATH=$PATH:$HOME/local/usr/bin
export PATH=$PATH:$HOME/.local/usr/bin
export PATH=$PATH:$HOME/.local/bin
function lsi {
    if [ -f ".index" ]; then
        dir=$(fzf --accept-nth 1 < .index)
    else
        dir=$(fzf --walker=dir)
    fi
    if [ ! -z $dir ]; then
        if [ -d $dir ]; then
            cd $dir
            pwd
        fi
    fi
}

# Vivado.
export PATH=$PATH:/opt/Xilinx/Vivado/2024.2/bin/

# Python.
export PYTHONPYCACHEPREFIX=/tmp/pycache
alias python=python3
function venv {
  dir=~/.pyenv
  if [ ! -d "$dir" ]; then
    mkdir -p $dir
    /usr/bin/env python3 -m venv $dir
  fi
  source "$dir/bin/activate"
}

# PostgreSQL.
export PAGER="less -S"

# CMake.
export CPM_SOURCE_CACHE=$HOME/.cpm_cache
