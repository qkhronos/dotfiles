## Oh My Zsh

export ZSH="$HOME/.config/oh-my-zsh"

if [[ -n $SSH_CONNECTION ]]; then
  ZSH_THEME="robbyrussell"
else
  ZSH_THEME="agnoster"
fi
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

## User

# GnuPG
gpg-connect-agent updatestartuptty /bye >/dev/null

# Aliases
source $HOME/.zsh_aliases
