PLATFORM=`uname`
if [[ "$PLATFORM" == 'Linux' ]]
  then
    bindkey -s '^[^V' '_connect_vpn^M'
  else
    bindkey -s '^V' '_connect_vpn^M'
fi

zle -N _reverse_search
bindkey '^R' _reverse_search
bindkey -s '^K' '_select_project^M'
