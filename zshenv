#! sh
#


for dir in /usr/local/bin "$HOME/.rbenv/bin" "$HOME/.rbenv/shims" "$HOME/bin"; do
  if [ -d "$dir" ]; then
    PATH="""${dir}:`echo "$PATH"|sed -e "s#${dir}:##"`"
  fi
done

PATH=".git/safe/../../bin:`echo "$PATH"|sed -e 's,\.git/[^:]*bin:,,g'`"

for dir in /usr/lib/surfraw /var/lib/gems/1.9.1/bin /var/lib/gems/1.8/bin /usr/sbin /sbin; do
  if [ -d "$dir" ]; then
    case ":$PATH:" in
      *:"$dir":*) ;;
      *) PATH="$PATH:$dir" ;;
    esac
  fi
done

unset dir
export PATH
