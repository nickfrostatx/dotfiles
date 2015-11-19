#!/bin/sh

# Update everything
brew update
brew upgrade --all
brew cask update

# Install homebrew packages
brew install docker docker-machine gcc git gnupg nmap node optipng pyenv pyenv-virtualenv vim zopfli zsh

# Install casks
brew cask install google-chrome kodi limechat sublime-text transmission vlc

# Clean up
brew prune
brew cleanup --force -s
brew cask cleanup
