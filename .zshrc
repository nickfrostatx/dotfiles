# Oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="steeef"
VIRTUAL_ENV_DISABLE_PROMPT=true
plugins=(brew git sublime)
source $ZSH/oh-my-zsh.sh

# Path
export PATH='/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin'

# Profile
source ~/.profile

# added by travis gem
[ -f /Users/nick/.travis/travis.sh ] && source /Users/nick/.travis/travis.sh
