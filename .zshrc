# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Make Homebrew's completions available in zsh
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

# Keep dotenv plugin from prompting when loading .env files
export ZSH_DOTENV_PROMPT=false

# Needed for Puma server to run properly on newer MacOS
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

export DOTFILES="$HOME/.dotfiles"

# source antidote
source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh

# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load $DOTFILES/zsh_plugins.txt > $DOTFILES/zsh_plugins.sh

# Go
# Give color to test results:
go_test() {
  go test $* | sed ''/PASS/s//$(printf "\033[32mPASS\033[0m")/'' | sed ''/SKIP/s//$(printf "\033[34mSKIP\033[0m")/'' | sed ''/FAIL/s//$(printf "\033[31mFAIL\033[0m")/'' | sed ''/FAIL/s//$(printf "\033[31mFAIL\033[0m")/'' | GREP_COLOR="01;33" egrep --color=always '\s*[a-zA-Z0-9\-_.]+[:][0-9]+[:]|^'
}

# chruby - switch rubies based on .ruby-version file in directory
# source /usr/local/share/chruby/chruby.sh
# source /usr/local/share/chruby/auto.sh

# Dotfiles
source $DOTFILES/path.zsh
source $DOTFILES/aliases.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.dotfiles/.p10k.zsh ]] || source ~/.dotfiles/.p10k.zsh

eval "$(/opt/homebrew/bin/brew shellenv)"

# Initialize nodenv
eval "$(nodenv init - zsh)"

# Initialize rbenv
eval "$(rbenv init - zsh)"