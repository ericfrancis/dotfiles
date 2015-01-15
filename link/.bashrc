# Where the magic happens.
export DOTFILES=~/.dotfiles

# Add binaries into the path
PATH=/bin:$PATH
PATH=$DOTFILES/bin:$PATH
export PATH

# Source all files in "source"
function src() {
  local file
  if [[ "$1" ]]; then
    source "$DOTFILES/source/$1.sh"
  else
    for file in $DOTFILES/source/*; do
      source "$file"
    done
  fi
}

# Run dotfiles script, then source.
function dotfiles() {
  $DOTFILES/bin/dotfiles "$@" && src
}

src

alias ls='ls -F --color=auto'
alias grep='grep --color=auto'
alias ll='ls -l'

set_mvn_version() {
  [[ $# -ne 1 || -z $1 ]] && echo "missing or invalid arguments" && return 1
  mvn versions:set -DgenerateBackupPoms=false -DnewVersion=$1
}
