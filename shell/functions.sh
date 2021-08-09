#!/bin/bash

# Create a new directory and enter it
mkd() {
	mkdir -p "$@" && cd "$_";
}

print_success() {
    printf " [✔] %s\n" "$1"
}

sp() {
  cdev
  local project=""
  project=$(ls | fzf)

  cd "$project" || exit
}

_reverse_search() {
  local selected_command
  selected_command=$(fc -rl 1 | awk '{$1="";print substr($0,2)}' | fzf)

  LBUFFER=$selected_command
}

zle -N _reverse_search
bindkey '^r' _reverse_search
