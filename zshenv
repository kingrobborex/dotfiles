# Use vim as the visual editor
export VISUAL=gvim
export EDITOR=vim

# Ensure dotfiles bin directory is loaded first
export PATH="$HOME/.local/bin:$HOME/.composer/vendor/bin:$PATH"

# Ruby Management with Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PATH="$HOME/.phpenv/bin:$PATH"
eval "$(phpenv init -)"


# Local config
[[ -f ~/.zshenv.local ]] && source ~/.zshenv.local


