# minimal version of my "hut" theme

# local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"


if [[ $UID -eq 0 ]]; then
    local user_symbol='#'
else
    local user_symbol='❯'
fi

local current_dir='%{$terminfo[bold]$fg[blue]%}%~%{$reset_color%}'

PROMPT="${current_dir} %B%(?.%F{magenta}.%F{red})${user_symbol}%f%b "
# RPS1="%B${return_code}%b"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"

