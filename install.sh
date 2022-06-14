#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Source nvm so it's accessible in this script
. ~/.nvm/nvm.sh

# Install latest version of node
nvm install --lts

# Use latest version of node
nvm use --lts

# Install global NPM packages
npm install --location=global yarn

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

