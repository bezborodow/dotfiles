For vim:

```
ln -s ~/src/dotfiles/vimrc ~/.vimrc
```

`.bash_aliases`:

```
CUSTOM_BASHRC=~/src/dotfiles/bashrc
if [ -f "$CUSTOM_BASHRC" ]; then
    source "$CUSTOM_BASHRC"
fi
```

`.ssh_config`:

```
Include ~/src/dotfiles/ssh_config
```
