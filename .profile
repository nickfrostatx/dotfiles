# Aliases
source ~/.aliases

[ -d ~/.bin ] && export PATH="$PATH:$HOME/.bin"

# Dotfiles
dotfiles() {
  (cd ~/.dotfiles && git pull && ./copy.sh)
}

# Minecraft local port forwarding
minecraft() {
  HOST="$1"
  if [ -z "$HOST" ]; then
    HOST=phoenix
  fi
  ssh -N -L 25565:localhost:25565 "$HOST"
}

# Editor
export EDITOR=vim

# Go
export GOPATH=$HOME/go

# Python
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PIP_REQUIRE_VIRTUALENV=true
syspip() {
  PIP_REQUIRE_VIRTUALENV='' pip $@
}
syspip3() {
  PIP_REQUIRE_VIRTUALENV='' pip3 $@
}
