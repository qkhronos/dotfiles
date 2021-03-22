# zsh
ZSH_THEME="agnoster"
CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

# plugins
plugins=(git)

# sources
source $HOME/.variables
source $HOME/.aliases
source $ZSH/oh-my-zsh.sh

# others
autoload -Uz compinit; compinit
setopt COMPLETE_ALIASES
