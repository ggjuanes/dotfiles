zle -N _reverse_search
bindkey '^R' _reverse_search
bindkey -s '^K' '_select_project^M'
bindkey -s '^B' '_git_change_branch^M'
