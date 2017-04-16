ZSH_PHPENV_DIR=${0:a:h}

[[ -z "$PHPENV_DIR" ]] && export PHPENV_DIR="$HOME/.phpenv"

_zsh_phpenv_install() {
  echo "Installing phpenv..."
  git clone https://github.com/madumlao/phpenv "$PHPENV_DIR"
  echo "Installing phpbuild..."
  git clone https://github.com/php-build/php-build "$PHPENV_DIR"/plugins/php-build
}

[[ ! -d "$PHPENV_DIR" ]] && _zsh_phpenv_install

if [[ -d "$PHPENV_DIR" ]]; then
  export PATH="$HOME/.phpenv/bin:$PATH"
  eval "$(phpenv init -)"
fi
