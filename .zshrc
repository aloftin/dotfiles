export DOTFILES="$HOME/.dotfiles"

# Theme
SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "
# Simplify prompt if we're using Hyper
if [[ "$TERM_PROGRAM" == "Hyper" ]]; then
  SPACESHIP_PROMPT_SEPARATE_LINE=false
  SPACESHIP_DIR_SHOW=false
  SPACESHIP_GIT_BRANCH_SHOW=false
fi

# Antibody
antibody bundle < $DOTFILES/zsh_plugins.txt > $DOTFILES/zsh_plugins.sh
source $DOTFILES/zsh_plugins.sh

# chruby - switch rubies based on .ruby-version file in directory
# source /usr/local/share/chruby/chruby.sh
# source /usr/local/share/chruby/auto.sh

# Dotfiles
source $DOTFILES/path.zsh
source $DOTFILES/aliases.zsh
