# User
export PATH="$PATH:$HOME/.local/bin"
export EDITOR="nvim"

# GnuPG
export GPG_TTY="$(tty)"
unset SSH_AGENT_PID
export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"

# Java
export JAVA_VERSION="11"
export JAVA_HOME="$HOME/.local/share/openjdk/$JAVA_VERSION"
export JDK_HOME="$JAVA_HOME"
export JRE_HOME="$JAVA_HOME/jre"
export CLASSPATH="$JAVA_HOME/lib:$JAVA_HOME/jre/lib"
export PATH="$PATH:$JAVA_HOME/bin"

# Gradle
export GRADLE_HOME="$HOME/.local/share/gradle"
export PATH="$PATH:$GRADLE_HOME/bin"

# JDT Language Server
export JDTLS_HOME="$HOME/.local/share/jdtls"
export JDTLS_CONFIG="$JDTLS_HOME/config_linux"
export WORKSPACE="$JDTLS_HOME/workspace"
export JAR="$JDTLS_HOME/plugins/org.eclipse.equinox.launcher_1.6.100.v20201223-0822.jar"

