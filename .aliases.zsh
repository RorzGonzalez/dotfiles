# Local Stuff
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias sites="cd $HOME/Dropbox/Web/Sites"
# alias sites="cd Dropbox/Web/Sites"
alias sql="mysql -uroot -pdbroot"

# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/saucz.pub"
alias reloadshell="source $HOME/.dotfiles/.zshrc"
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias c="clear"

# php
alias php72="/opt/homebrew/opt/php@7.2/bin/php"
alias php73="/opt/homebrew/opt/php@7.3/bin/php"
alias php74="/opt/homebrew/opt/php@7.4/bin/php"
alias php80="/opt/homebrew/opt/php@8.0/bin/php"
alias php81="/opt/homebrew/opt/php@8.1/bin/php"
alias php82="/opt/homebrew/opt/php@8.2/bin/php"
# alias php="/opt/homebrew/opt/php/bin/php"

# Homebrew
alias services="brew services"

# IDE
alias c="codium ."
alias o="open ."

# Composer stuff
alias composer="php /usr/local/bin/composer"
alias cda="composer dump-autoload"

# Laravel Mix Stuff
alias dev="npm run dev"
alias hot="npx mix watch --hot"
alias watch="npm run watch"
alias watch-ssr="npm run watch-ssr"
alias build="npm run build"

# Laravel Stuff
alias pa="php artisan"
alias pat="php artisan tinker"
alias pam="php artisan migrate"
alias mr="php artisan migrate:rollback"
alias mf="php artisan migrate:fresh"
alias mfs="php artisan migrate:fresh --seed"
alias oc="php artisan optimize:clear"
alias cc="php artisan config:clear && php artisan cache:clear && php artisan view:clear && php artisan route:clear && php artisan event:clear"
alias fresh="php artisan migrate:fresh --seed"
alias tinker="php artisan tinker"
alias seed="php artisan db:seed"
alias serve="php artisan serve"

# Testing Stuff
alias test="php artisan test"
alias tf="php artisan test --filter"
alias pest="php artisan pest:test"
alias newtest="php artisan make:test"
alias unit="vendor/bin/phpunit"
alias pf="vendor/bin/phpunit --filter"

alias cy="npx cypress open"

# Git Stuff
alias ga="git add"
alias gaa="git add ."
alias gb="git branch"
alias gc="git commit -m "
alias co="git checkout"
alias cob="git checkout -b "
alias gs="git status"
alias gp="git push"
alias gf="git fetch"
alias gl="git log"
alias glo="git log --oneline"
alias glog="git log --oneline --graph"
alias nah="git reset --hard;git clean -df;"
# Git
alias amend="git add . && git commit --amend --no-edit"
alias commit="git add . && git commit -m"
alias gd="git diff"
alias force="git push --force"
alias nuke="git clean -df && git reset --hard"
alias pop="git stash pop"
alias pull="git pull"
alias push="git push"
alias resolve="git add . && git commit --no-edit"
alias stash="git stash -u"
alias unstage="git restore --staged ."
alias wip="commit wip"

alias pserve='open http://localhost:8000 && python -m SimpleHTTPServer'

alias nginxrestart="nginx -s stop && nginx"
alias redis='redis-server'

#Functions

# Make switching php versions easy
function phpv() {
    brew unlink php
    brew link --overwrite --force "php@$1"
    php -v
}

# nginxcreate webby.test webby
function newsite() {
    mkdir $HOME/Dropbox/Web/Sites/$2
    mkdir $HOME/Dropbox/Web/Sites/$2/log
    wget https://gist.githubusercontent.com/RorzGonzalez/6a772a77210f5706c960e7059146d960/raw/09fd1b36f9468b5d0cf8b25cab3c6a685b48c4ee/nginx-server-template-m1.conf -O $HOME/Dropbox/Web/Sites/$2/$1.conf
    sed -i '' "s:{{host}}:$1:" $HOME/Dropbox/Web/Sites/$2/$1.conf

    if [ "$2" ]; then
        sed  -i '' "s:{{dir}}:$2:" $HOME/Dropbox/Web/Sites/$2/$1.conf
    else
        sed  -i '' "s:{{dir}}:$HOME/Sites/$1:" $HOME/Dropbox/Web/Sites/$2/$1.conf
    fi

    addssl $1

    nginxrestart

    codium $HOME/Dropbox/Web/Sites/$2/$1.conf
 }

 function addssl() {
     openssl req \
        -x509 -sha256 -nodes -newkey rsa:2048 -days 3650 \
        -subj "/CN=$1" \
        -reqexts SAN \
        -extensions SAN \
        -config <(cat /System/Library/OpenSSL/openssl.cnf; printf "[SAN]\nsubjectAltName=DNS:$1") \
        -keyout /Users/Saucz/Dropbox/Web/Certs/$1.key \
        -out /Users/Saucz/Dropbox/Web/Certs/$1.crt

    sudo security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain /Users/Saucz/Dropbox/Web/Certs/$1.crt
 }

#  function nginxedit() {
#      codium /Users/Saucz/Dropbox/Web/Sites/$1
#  }
