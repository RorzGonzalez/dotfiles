# Load dotfiles binaries
# export PATH="$DOTFILES/bin:$PATH"

export PATH="/opt/homebrew/sbin:$PATH"
export PATH="/opt/homebrew/opt/php@7.4/bin:$PATH"
export PATH="/opt/homebrew/opt/php@7.4/sbin:$PATH"
export PATH="/opt/homebrew/opt/php/bin:$PATH"
export PATH="/opt/homebrew/opt/php/sbin:$PATH"

# Load Composer tools
export COMPOSER_HOME=$HOME/.composer
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="$PATH:$HOME/.composer/vendor/bin"

# Load Node global installed binaries
export PATH="$HOME/.node/bin:$PATH"
export PATH="/opt/hombrew/opt/node@20/bin:$PATH"

# Use project specific binaries before global ones
export PATH="node_modules/.bin:vendor/bin:$PATH"

# Make sure coreutils are loaded before system commands
# I've disabled this for now because I only use "ls" which is
# referenced in my aliases.zsh file directly.
#export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"


# export GOROOT="/usr/local/go"
# export GOPATH="/Users/Saucz/Dropbox/Web/Sites/go"
# export PATH="/Users/Saucz/Dropbox/Web/Sites/go/bin:$PATH"
# export PATH="$HOME/.symfony/bin:$PATH"

fpath=(~/.stripe $fpath)
    autoload -Uz compinit && compinit -i

# [[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
# if [ -d "$HOME/.config/composer/vendor/bin" ] ; then
#     PATH="$HOME/.config/composer/vendor/bin:$PATH"
# fi
