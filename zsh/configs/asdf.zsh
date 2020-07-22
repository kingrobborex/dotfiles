# load ASDF
if [ -d "$HOME/.asdf" ]; then
  autoload -Uz bashcompinit
  bashcompinit

  . $HOME/.asdf/asdf.sh
  . $HOME/.asdf/completions/asdf.bash
  . $HOME/.asdf/plugins/java/set-java-home.zsh
fi

eval "$(asdf exec direnv hook zsh)"
