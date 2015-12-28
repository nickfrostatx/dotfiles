#!/bin/sh
SOURCE_DIR="$HOME/.dotfiles"
SUBLIME_DIR="$/HOME/Library/Application Support/Sublime Text 2/Packages/User"

for f in .aliases .gitconfig .gitignore_global .profile .vimrc .zshrc; do
  [[ "$SOURCE_DIR/$f" -nt "$HOME/$f" ]] && cp -v "$SOURCE_DIR/$f" "$HOME/$f"
done

if [[ -d "$SUBLIME_DIR" ]]; then
  for f in "$SOURCE_DIR/sublime/"*.sublime-settings; do
    DEST="$SUBLIME_DIR/$(basename $f)"
    [[ "$f" -nt "$DEST" ]] && cp -v "$f" "$DEST"
  done
fi
