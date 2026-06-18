# Add directories to the PATH and prevent to add the same directory multiple times upon shell reload.
add_to_path() {
  if [[ -d "$1" ]] && [[ ":$PATH:" != *":$1:"* ]]; then
    export PATH="$1:$PATH"
  fi
}

# Load dotfiles binaries
add_to_path "$DOTFILES/bin"

# Load Composer tools
add_to_path "$HOME/.composer/vendor/bin"

# Load Node global installed binaries
add_to_path "$HOME/.node/bin"

# Load GOPATH
export GOPATH="$HOME/go"
add_to_path "$GOPATH/bin"

# Yarn packages
# add_to_path "$HOME/.config/yarn/global/node_modules/.bin"

# Use project specific binaries before global ones
add_to_path "vendor/bin"
add_to_path "node_modules/.bin"

# Postgres app 
# add_to_path "/Applications/Postgres.app/Contents/Versions/latest/bin"

# Add libpq to path for Rails use of Postgres
# add_to_path "/opt/homebrew/opt/libpq/bin"

# Set default Postgres database
export PGDATABASE=postgres

# Make sure coreutils are loaded before system commands
# I've disabled this for now because I only use "ls" which is
# referenced in my aliases.zsh file directly.
# export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
