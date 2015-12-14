# Use vim as the visual editor
export VISUAL=vim
export EDITOR=$VISUAL

# Ensure dotfiles bin directory is loaded first
export PATH="$HOME/.bin:/usr/local/sbin:$HOME/.composer/vendor/bin:$HOME/.rbenv/bin:$HOME/.phpenv/bin:$PATH"

PATH="$HOME/.bin:$HOME/.node_modules/bin:$PATH"
export npm_config_prefix=~/.node_modules



# Load rbenv if available
if which rbenv &>/dev/null ; then
  eval "$(rbenv init - --no-rehash)"
fi

# Load phpenv if available
if which phpenv &>/dev/null ; then
  eval "$(phpenv init -)"
fi

# Local config
[[ -f ~/.zshenv.local ]] && source ~/.zshenv.local
