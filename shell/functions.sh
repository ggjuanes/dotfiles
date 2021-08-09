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
