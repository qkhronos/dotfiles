# zsh
ZSH_THEME="agnoster"
CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

# plugins
plugins=(git)

# others
autoload -Uz compinit; compinit
setopt COMPLETE_ALIASES

# gnupg
gpg-connect-agent updatestartuptty /bye >/dev/null

# sources
source $ZSH/oh-my-zsh.sh
source $HOME/.zaliases
