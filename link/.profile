# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

export JAVA_HOME=/opt/jdk1.8.0_25
export M2_HOME=/opt/apache-maven-3.2.3
export INTELLIJ_HOME=/opt/intellij
export PATH="$PATH:$M2_HOME/bin:$JAVA_HOME/bin:$INTELLIJ_HOME/bin"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
