for file in ~/shell/{bindkey.sh,a}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
