#!/bin/sh
SOURCE_DIR="$HOME/.dotfiles"

for f in .aliases .gitconfig .gitignore_global .profile .vimrc .zshrc; do
  [[ "$SOURCE_DIR/$f" -nt "$HOME/$f" ]] && cp -v "$SOURCE_DIR/$f" "$HOME/$f"
done


