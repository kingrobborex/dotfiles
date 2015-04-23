# ~/.zshrc
#

# External {{{1

[ ! -f "$HOME/.rbenv/bin/rbenv" ] || eval "$(~/.rbenv/bin/rbenv init -)"

#}}}1
# Prompt {{{1

_git_prompt_info() {
  case "$PWD" in
    /net/*|/Volumes/*) return ;;
  esac
  if [ -d .svn ]; then
    ref=.svn
  else
    ref=${$(git symbolic-ref HEAD 2> /dev/null)#refs/heads/} || \
      ref=${$(git rev-parse HEAD 2>/dev/null)[1][1,7]} || \
      return
  fi
  case "$TERM" in
    *-256color)             branchcolor=$'\e[38;5;31m'   ;;
    *-88color|rxvt-unicode) branchcolor=$'\e[38;5;22m'   ;;
    xterm*)                 branchcolor=$'\e[00;94m'     ;;
    *)                      branchcolor="$fg_bold[blue]" ;;
  esac
  print -Pn '(%%{$branchcolor%%}%20>..>$ref%<<%%{\e[00m%%})'
}

autoload -Uz colors && colors

if [ -x "$HOME/bin/tpope-host" ]; then
  hostcolor=$'\e['`tpope-host ansi`m
else
  hostcolor=$'\e[01;37m'
fi

local usercolor="$fg_bold[yellow]"
local dircolor="$fg_bold[blue]"
# Use echotc Co?
case "$TERM" in
  *-256color)
    usercolor=$'\e[38;5;184m'
    dircolor=$'\e[38;5;27m'
    ;;
  *-88color|rxvt-unicode)
    usercolor=$'\e[38;5;56m'
    dircolor=$'\e[38;5;23m'
    ;;
esac
[ $UID = '0' ] && usercolor="$fg_bold[white]"
reset_color=$'\e[00m'

PROMPT="%{$usercolor%}%n%{$reset_color%}@%{${hostcolor}%}%m%{$reset_color%}:%{$dircolor%}%30<...<%~%<<%{$reset_color%}\$(_git_prompt_info)%# "
RPS1="%(?..(%{"$'\e[01;35m'"%}%?%{$reset_color%}%)%<<)"
setopt promptsubst

#}}}1

