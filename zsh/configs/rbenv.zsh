ZSH_RBENV_DIR=${0:a:h}

[[ -z "$RBENV_DIR" ]] && export RBENV_DIR="$HOME/.rbenv"

_zsh_rbenv_install() {
  echo "Installing rbenv..."
  git clone https://github.com/rbenv/rbenv.git "$RBENV_DIR"
}

[[ ! -d "$RBENV_DIR" ]] && _zsh_rbenv_install

if [[ -d "$RBENV_DIR" ]]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi
