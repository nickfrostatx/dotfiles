# Oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="steeef"
VIRTUAL_ENV_DISABLE_PROMPT=true
plugins=(brew git pyenv sublime)
source $ZSH/oh-my-zsh.sh

# Path
export PATH='/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin'

# Profile
source ~/.profile
