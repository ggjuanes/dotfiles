#!/bin/zsh

# Create a new directory and enter it
function mkd() {
	mkdir -p "$@" && cd "$_";
}

function print_success() {
    printf " [✔] %s\n" "$1"
}

function print_error() {
    printf " [✖] %s\n" "$1"
}

function cdev() {
  _export_config_value '.development_folder'
  cd "$DOTFILE_CONFIG_VALUE"
}

function _select_project() {
  cdev
  local project=""
  project=$(ls | fzf)

  cd "$project" || exit
}

function _validate_config() {
  if [ -z "$DOTFILE_CONFIG_FILE" ]; then
        print_error "Config file variable is not defined. Please set DOTFILE_CONFIG_FILE"
  fi
}

function _export_config_value() {
  export DOTFILE_CONFIG_VALUE=""
  DOTFILE_CONFIG_VALUE=$(jq -r "$1" "$DOTFILE_CONFIG_FILE")
}

function _connect_vpn() {
  local env=""
  _export_config_value '.vpn.directory'
  local dir=$DOTFILE_CONFIG_VALUE
  env=$(ls $dir | fzf)

  local tmpfile=""
  tmpfile="/tmp/vpn_connect.XXXXXXX"
  tmpfile=$(mktemp "$tmpfile")
  _export_config_value '.vpn.user'
  echo "$DOTFILE_CONFIG_VALUE" >> "$tmpfile"

  printf 'Enter vpn code : '
  read -r password
  echo "$password" >> $tmpfile

  sudo openvpn --config "${dir}/${env}" --auth-user-pass "$tmpfile"
}

function _reverse_search() {
  local selected_command
  selected_command=$(fc -rl 1 | awk '{$1="";print substr($0,2)}' | fzf)

  LBUFFER=$selected_command
}
