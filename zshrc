# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local


export NVM_DIR="/home/robert/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

autoload -U add-zsh-hook

load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
  	  nvm use
  fi
}
add-zsh-hook chpwd load-nvmrc

# SSH-Agent
if ! pgrep -u $USER ssh-agent > /dev/null; then
  ssh-agent > ~/.ssh-agent-thing
fi
if [[ "$SSH_AGENT_PID" == "" ]]; then
  eval $(<~/.ssh-agent-thing)
fi

ssh-add -l >/dev/null || alias ssh='ssh-add -l >/dev/null || ssh-add && unalias ssh; ssh'
