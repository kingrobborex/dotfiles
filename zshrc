# Modify the prompt to contain git branch name if applicable
git_prompt_info() {
  current_branch=$(git current-branch 2> /dev/null)
  if [[ -n $current_branch ]]; then
    echo " %{$fg_bold[green]%}$current_branch%{$reset_color%}"
  fi
}

setopt promptsubst
export PS1='${SSH_CONNECTION+"%{$fg_bold[green]%}%n@%m:"}%{$fg_bold[blue]%}%c%{$reset_color%}$(git_prompt_info) %# '

# Completion
autoload -U compinit
compinit

# makes color constants available
autoload -U colors
colors

# enable acolored output from ls, etc
export CLICOLOR=1

# History settings
setopt hist_ignore_all_dups inc_append_history
HISTFILE=~/.zhistory
HISTSIZE=4096
SAVEHIST=4096


# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

PATH="/home/robertjames/perl5/bin${PATH+:}${PATH}"; export PATH;
PERL5LIB="/home/robertjames/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/robertjames/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/robertjames/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/robertjames/perl5"; export PERL_MM_OPT;
