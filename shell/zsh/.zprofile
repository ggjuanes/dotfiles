for file in ~/shell/{functions.sh,aliases.sh,exports.sh}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

PLATFORM=`uname`
if [[ "$PLATFORM" == 'Linux' ]]
  then
    for file in ~/shell/{aliases-ubuntu.sh,exports-ubuntu.sh,functions-ubuntu.sh}; do
  	    [ -r "$file" ] && [ -f "$file" ] && source "$file";
    done;
fi

_validate_config

autoload -U compinit && compinit
zmodload -i zsh/complist
