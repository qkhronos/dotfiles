# User
export PATH="$PATH:$HOME/.local/bin"
export EDITOR="nvim"
export TERM="xterm-256color"

# GnuPG
export GPG_TTY="$(tty)"
unset SSH_AGENT_PID
export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
