# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export DOTFILES="$HOME/.dotfiles"

# Antibody
antibody bundle < $DOTFILES/zsh_plugins.txt > $DOTFILES/zsh_plugins.sh
source $DOTFILES/zsh_plugins.sh

# chruby - switch rubies based on .ruby-version file in directory
# source /usr/local/share/chruby/chruby.sh
# source /usr/local/share/chruby/auto.sh

# Dotfiles
source $DOTFILES/path.zsh
source $DOTFILES/aliases.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.dotfiles/.p10k.zsh ]] || source ~/.dotfiles/.p10k.zsh
