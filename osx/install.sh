#!/usr/bin/env zsh
ADMINUSER=hal
set -e

if [ ! -d xcode-select -print-path 2>/dev/null ]; then
    xcode-select --install
    echo 'Press any key when the installation has completed.'
    read -k1 -s
fi

if [ ! -e ~/.dotfiles ]; then
    git clone git@github.com:nickfrostatx/dotfiles.git ~/.dotfiles
fi

echo "Authenticating as $ADMINUSER"
su $ADMINUSER $HOME/.dotfiles/osx/admin.sh

sh ~/.dotfiles/osx/brew.sh

if [ "$SHELL" != "/usr/local/bin/zsh" ]; then
    chsh -s /usr/local/bin/zsh
fi

if [ ! -d ~/.oh-my-zsh ]; then
    git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi

if [ ! -d ~/code ]; then
    echo "Creating ~/code"
    mkdir -m 700 ~/code
fi

sh ~/.dotfiles/copy.sh
