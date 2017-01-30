ZSH_RBENV_DIR=${0:a:h}

[[ -z "$RBENV_DIR" ]] && export RBENV_DIR="$HOME/.rbenv"

_zsh_rbenv_install() {
  echo "Installing rbenv..."
  git clone https://github.com/rbenv/rbenv.git "$RBENV_DIR"

  echo "Installing ruby-build..."
  git clone https://github.com/rbenv/ruby-build.git "$RBENV_DIR"/plugins/ruby-build

  echo "Installing rbenv-default-gems..."
  git clone https://github.com/rbenv/rbenv-default-gems.git "$RBENV_DIR"/plugins/rbenv-default-gems
}

[[ ! -d "$RBENV_DIR" ]] && _zsh_rbenv_install

if [[ -d "$RBENV_DIR" ]]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi
