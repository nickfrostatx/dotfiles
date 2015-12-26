# Aliases
source ~/.aliases

[ -d ~/.bin ] && export PATH="$PATH:$HOME/.bin"

# Dotfiles
dotfiles() {
  (cd ~/.dotfiles && git pull && ./copy.sh)
}

# Editor
export EDITOR=vim

# Python
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PIP_REQUIRE_VIRTUALENV=true
VIRTUAL_ENV_DISABLE_PROMPT=true
syspip() {
  PIP_REQUIRE_VIRTUALENV='' pip $@
}
syspip3() {
  PIP_REQUIRE_VIRTUALENV='' pip3 $@
}
