# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User
alias dotf="git --git-dir=$HOME/.config/dotfiles --work-tree=$HOME"
