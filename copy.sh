#!/bin/sh
for f in .aliases .gitconfig .gitignore_global .profile .vimrc .zshrc; do
    [[ ~/.dotfiles/$f -nt ~/$f ]] && cp -v ~/.dotfiles/$f ~/$f
done
