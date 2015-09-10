# Use vim as the visual editor
export VISUAL=vim
export EDITOR=$VISUAL

# Ensure dotfiles bin directory is loaded first
export PATH="$HOME/.bin:/usr/local/sbin:$HOME/.rbenv/bin:$PATH"

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
