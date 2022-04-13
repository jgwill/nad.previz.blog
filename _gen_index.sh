for f in $(ls *md) ; do title="$(cat $f  | awk '/post_title/ '| tr "'" " " | sed -e 's/post_title\: //')";if [ "$title" == "" ] || [ "$title" == ">" ]|| [ "$title" == "\"\"" ] ; then title="$f";fi; echo '['"$title"']('"$f"')';done > index.md

