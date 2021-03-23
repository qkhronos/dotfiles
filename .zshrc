## Oh My Zsh

export ZSH="$HOME/.config/oh-my-zsh"

ZSH_THEME="agnoster"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

## User

# GnuPG
gpg-connect-agent updatestartuptty /bye >/dev/null

# Aliases
alias dotf="git --git-dir=$HOME/.config/dotfiles --work-tree=$HOME"
