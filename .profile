# Aliases
source ~/.aliases

# Dotfiles
dotfiles() {
  (cd ~/.dotfiles && git pull && ./copy.sh)
}

# Python
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PIP_REQUIRE_VIRTUALENV=true
VIRTUAL_ENV_DISABLE_PROMPT=true
syspip() {
  PIP_REQUIRE_VIRTUALENV='' pip $@
}
