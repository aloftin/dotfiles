# Run this if you've made changes to the zsh config
# and want to update your zshrc, etc.

# Make ZSH the default shell environment
# May need to open /etc/shells to edit it
sudo echo "$(which zsh)" >> /etc/shells
chsh -s $(which zsh)

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Symlink the Mackup config file to the home directory
ln -s $HOME/.dotfiles/.mackup.cfg $HOME/.mackup.cfg