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

# Systemd
systemctl --user import-environment PATH
systemctl --user import-environment JAVA_HOME
systemctl --user import-environment GRADLE_HOME
systemctl --user import-environment SSH_AUTH_SOCK

# AWS
autoload bashcompinit && bashcompinit
complete -C '/usr/local/bin/aws_completer' aws

# GnuPG
gpg-connect-agent updatestartuptty /bye >/dev/null

# Aliases
alias dotf="git --git-dir=$HOME/.config/dotfiles --work-tree=$HOME"
alias dotfl="dotf log --oneline --decorate --graph --all"
alias dotfpl="dotf pull --rebase origin"
alias dotfps="dotf push -u origin"
alias dotfs="dotf status -uno"
