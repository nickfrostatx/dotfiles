#!/bin/sh
# This script is to be run by an admin user
HB_USER=nick
HB_GROUP=staff

echo "Authenticating with sudo for $USER"
sudo -v

if ! which brew > /dev/null; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew update
    brew install zsh caskroom/cask/brew-cask
    brew cask update
    echo "Fixing homebrew permissions"
    sudo chown -R -v $HB_USER:$HB_GROUP /usr/local /opt/homebrew-cask /Library/Caches/Homebrew
    sudo chmod 755 -v /opt/homebrew-cask
fi

if ! grep ^/usr/local/bin/zsh$ /etc/shells > /dev/null; then
    echo "Adding /usr/local/bin/zsh to /etc/shells"
    sudo echo /usr/local/bin/zsh >> /etc/shells
fi

echo "Enforcing FileVault hibernation."
sudo pmset -a destroyfvkeyonstandby 1
sudo pmset -a hibernatemode 25
