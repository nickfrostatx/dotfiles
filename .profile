# Aliases
alias l='ls -lah'
alias refresh='brew update && brew upgrade --all && brew cleanup --force -s && brew prune && upgrade_oh_my_zsh'

# Editor
export EDITOR=vim

# Go
export GOPATH=$HOME/go

export HOMEBREW_NO_ANALYTICS=true

# Python
export PIP_REQUIRE_VIRTUALENV=true
syspip() {
  PIP_REQUIRE_VIRTUALENV='' pip $@
}
syspip3() {
  PIP_REQUIRE_VIRTUALENV='' pip3 $@
}
