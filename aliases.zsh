# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias reloadshell="omz reload"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias ll="/opt/homebrew/opt/coreutils/libexec/gnubin/ls -ahlF --color --group-directories-first"
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias c="clear"
alias timestamp="date +%s"

# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias projects="cd $HOME/Code"
alias flt="cd $HOME/Code/fleetio"

# Command line navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ....="cd ../../../.."
alias .....="cd ../../../../.."

# JS
alias nfresh="rm -rf node_modules/ package-lock.json && npm install"
alias watch="npm run dev"

# Docker
alias docker-composer="docker-compose"
#alias dstop="docker stop $(docker ps -a -q)"
#alias dpurgecontainers="dstop && docker rm $(docker ps -a -q)"
#alias dpurgeimages="docker rmi $(docker images -q)"
#dbuild() { docker build -t=$1 .; }
#dbash() { docker exec -it $(docker ps -aqf "name=$1") bash; }

# Git
alias gs="git status"
alias gb="git branch --sort=-committerdate"
alias gco="git checkout"
alias gl="git log --oneline --decorate --color"
alias gpo="git push origin"
alias commit="git add . && git commit -m"
alias diff="git diff"
alias force="git push --force-with-lease"
alias wip="commit wip"
alias ga="git add"
alias pop="git stash pop"
alias pull="git pull"
alias stash="git stash -u"
alias gnuke="git clean -df && git reset --hard"

# Go
alias gocov="go test ./... --coverpkg ./... --coverprofile=cover_all.out;grep -v mocks cover_all.out > cover.out;go tool cover -html=cover.out;rm cover*.out"
alias gocovt="go_test ./... --coverpkg ./... --coverprofile=cover_all.out;grep -v mocks cover_all.out > cover.out;go tool cover -func=cover.out;rm cover*.out"