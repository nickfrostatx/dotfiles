#!/bin/sh
SOURCE_DIR="~/.dotfiles"

for f in .aliases .gitconfig .gitignore_global .profile .vimrc .zshrc; do
    [[ "$SOURCE_DIR/$f" -nt "~/$f" ]] && cp -v "$SOURCE_DIR/$f" "~/$f"
done


