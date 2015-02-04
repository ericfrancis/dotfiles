export JAVA_HOME=/opt/jdk1.8.0_25
export M2_HOME=/opt/apache-maven-3.2.3
export INTELLIJ_HOME=/opt/intellij
export PHANTOMJS_HOME=/opt/phantomjs
export RELATIVE_NODE_MODULES=node_modules/.bin
export PATH="$PATH:$M2_HOME/bin:$JAVA_HOME/bin:$INTELLIJ_HOME/bin:$PHANTOMJS_HOME/bin:$RELATIVE_NODE_MODULES"

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

if [ -f ~/.profile ]; then
  source ~/.profile
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
