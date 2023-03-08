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

# Set up jenv Java binary in path is not in the jenv shims.
# See: https://github.com/jenv/jenv/wiki/Trouble-Shooting#java-binary-in-path-is-not-in-the-jenv-shims
export JENV_ROOT=/usr/local/opt/jenv
if which jenv > /dev/null; then eval "$(jenv init -)"; fi
