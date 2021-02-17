# loat completion f unctions
fpath=(~/.zsh/completion /usr/share/zsh/site_functions $fpath)

# Completion; use cache if updated within 24h
autoload -Uz compinit
if [[ -n $HOME/.zcompdump(#qN.mh+24) ]]; then
	compinit -d $HOME/.zcompdump;
else
	compinit -C
fi;

# Disable zsh bundled function mtools command mcd
# Which causes a conflict.
compdef -d mcd
