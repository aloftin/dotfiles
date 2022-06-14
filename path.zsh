# Load Composer tools
export PATH="$HOME/.composer/vendor/bin:$PATH"

# Load Node global installed binaries
export PATH="$HOME/.node/bin:$PATH"

# Load GOPATH
export GOPATH="$HOME/go"
PATH="$GOPATH/bin:$PATH"

# Config for private Go modules at RxB
export DOCKER_NETRC="$(cat ~/.netrc)"
export GOPRIVATE="github.com/RxBenefits"

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# Yarn packages
PATH="$PATH:$HOME/.config/yarn/global/node_modules/.bin"

# Use project specific binaries before global ones
export PATH="node_modules/.bin:vendor/bin:$PATH"

# Postgres app 
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

#Docker NETRC
export DOCKER_NETRC="$(cat ~/.netrc)"

# Make sure coreutils are loaded before system commands
# I've disabled this for now because I only use "ls" which is
# referenced in my aliases.zsh file directly.
#export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
