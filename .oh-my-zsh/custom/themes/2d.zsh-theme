# minimal version of my "hut" theme

if [[ $UID -eq 0 ]]; then
    local user_symbol='#'
else
    local user_symbol='❯'
fi

local current_dir='%{$terminfo[bold]$fg[blue]%}%~%{$reset_color%}'

PROMPT="${current_dir} %B%(?.%F{magenta}.%F{red})${user_symbol}%f%b "
