# load ASDF, falling back to rbenv if not available
if [ -d "$HOME/.asdf" ]; then
  autoload -Uz compinit
  compinit

  . $HOME/.asdf/asdf.sh
  . $HOME/.asdf/completions/asdf.bash
fi
 
