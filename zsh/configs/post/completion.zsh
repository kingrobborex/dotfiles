# loat completion f unctions
fpath=(~/.zsh/completion /usr/share/zsh/site_function $fpath)

# completion
autoload -Uz compinit
compinit -C

compdef -d mcd
