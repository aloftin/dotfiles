#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Install node
nodenv install

# Install global NPM packages
npm install -g yarn

# Make ZSH the default shell environment
# May need to open /etc/shells to edit it
# sudo echo "$(which zsh)" >> /etc/shells
# chsh -s $(which zsh)

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Symlink the Mackup config file to the home directory
ln -s $HOME/.dotfiles/.mackup.cfg $HOME/.mackup.cfg

############################################################
## Uncomment after fixing .macos settings
############################################################

# Set macOS preferences
# We will run this last because this will reload the shell
# source .macos

############################################################
## Uncomment after fixing .macos settings
############################################################

