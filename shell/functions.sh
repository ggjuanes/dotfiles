#!/bin/bash

# Create a new directory and enter it
mkd() {
	mkdir -p "$@" && cd "$_";
}

print_success() {
    printf " [✔] %s\n" "$1"
}

print_error() {
    printf " [✖] %s\n" "$1"
}

sp() {
  cdev
  local project=""
  project=$(ls | fzf)

  cd "$project" || exit
}

_validate_config() {
  if [ -z "$DOTFILE_CONFIG_FILE" ]; then
        print_error "Config file variable is not defined. Please set DOTFILE_CONFIG_FILE"
  fi
}

_connect_vpn() {
  local env=""
  local dir=$(jq -r '.vpn.directory' "$DOTFILE_CONFIG_FILE")
  env=$(ls $dir | fzf)

  local tmpfile=""
  tmpfile="/tmp/vpn_connect.XXXXXXX"
  tmpfile=$(mktemp "$tmpfile")
  jq -r '.vpn.user' "$DOTFILE_CONFIG_FILE" >> "$tmpfile"

  printf 'Enter vpn code : '
  read -r password
  echo "$password" >> $tmpfile
  cat $tmpfile

  sudo openvpn --config "${dir}/${env}" --auth-user-pass "$tmpfile"
}

_reverse_search() {
  local selected_command
  selected_command=$(fc -rl 1 | awk '{$1="";print substr($0,2)}' | fzf)

  LBUFFER=$selected_command
}

zle -N _connect_vpn
bindkey '^[^V' _connect_vpn

zle -N _reverse_search
bindkey '^r' _reverse_search
