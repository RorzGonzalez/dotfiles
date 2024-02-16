. ~/.aliases
source ~/.profile
source ~/.stripe/stripe-completion.bash
export PATH=$PATH:/Users/Saucz/ffmpeg
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/php@7.4/bin:$PATH"
export PATH="/usr/local/opt/php@7.4/sbin:$PATH"
# PHP 8.2
export PATH="/usr/local/opt/php@8.2/bin:$PATH"
export PATH="/usr/local/opt/php@8.2/sbin:$PATH"
export PATH="/usr/local/opt/php/bin:$PATH"
export PATH="/usr/local/opt/php/sbin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="$PATH:$HOME/.composer/vendor/bin"
export GOROOT="/usr/local/go"
export GOPATH="/Users/Saucz/Dropbox/Web/Sites/go"
export PATH="/Users/Saucz/Dropbox/Web/Sites/go/bin:$PATH"
export PATH="$HOME/.symfony/bin:$PATH"

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
# if [ -d "$HOME/.config/composer/vendor/bin" ] ; then
#     PATH="$HOME/.config/composer/vendor/bin:$PATH"
# fi
export PATH="/usr/local/opt/node@16/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/saucz/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/saucz/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/saucz/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/saucz/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

