for file in ~/shell/{functions.sh,aliases.sh}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

autoload -U compinit && compinit
zmodload -i zsh/complist
