# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias reloadcli="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias ll="/usr/local/opt/coreutils/libexec/gnubin/ls -ahlF --color --group-directories-first"
weather() { curl -4 wttr.in/${1:-antwerp} }
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias c="clear"
alias zbundle="antibody bundle < $DOTFILES/zsh_plugins.txt > $DOTFILES/zsh_plugins.sh"

# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"

# Command line navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ....="cd ../../../.."
alias .....="cd ../../../../.."

# JS
alias nfresh="rm -rf node_modules/ package-lock.json && npm install"

# Docker
alias docker-composer="docker-compose"
#alias dlogin="docker login -u AWS -p $(aws ecr get-login-password --region us-east-1) 266895286924.dkr.ecr.us-east-1.amazonaws.com"
#alias dstop="docker stop $(docker ps -a -q)"
#alias dpurgecontainers="dstop && docker rm $(docker ps -a -q)"
#alias dpurgeimages="docker rmi $(docker images -q)"
#dbuild() { docker build -t=$1 .; }
#dbash() { docker exec -it $(docker ps -aqf "name=$1") bash; }

# Git
alias commit="git add . && git commit -m"
alias gcommit="git add . && git commit"
alias wip="commit wip"
alias ga="git add"
alias ga.="git add ."
alias gs="git status"
alias gb="git branch"
alias gco="git checkout"
alias gd="git diff"
alias gl="git log --oneline --decorate --color"
alias gnuke="git clean -df && git reset --hard"
alias gpo="git push origin"

# Go
alias gocov="go test ./... --coverpkg ./... --coverprofile=cover_all.out;grep -v mocks cover_all.out > cover.out;go tool cover -html=cover.out;rm cover*.out"
alias gocovt="go_test ./... --coverpkg ./... --coverprofile=cover_all.out;grep -v mocks cover_all.out > cover.out;go tool cover -func=cover.out;rm cover*.out"

##############
# RxBenefits
##############

alias rxb="cd $HOME/projects/rxbenefits"
#alias ecrlogin="docker login -u AWS -p $(aws ecr get-login-password --region us-east-1) 266895286924.dkr.ecr.us-east-1.amazonaws.com"


# Swagger - Go
alias swagger='docker run --rm -it -e GOPATH=$HOME/go:/go -v $HOME:$HOME -w $(pwd) quay.io/goswagger/swagger'