# my mash-up of theme goodness ("refined" plus "bira")

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"


if [[ $UID -eq 0 ]]; then
    local user_symbol='#'
else
    local user_symbol='❯'
fi

local current_dir='%{$terminfo[bold]$fg[blue]%}%~%{$reset_color%}'

local rvm_ruby=''
if which rvm-prompt &> /dev/null; then
  rvm_ruby='%{$fg[grey]%}‹$(rvm-prompt i v g)›%{$reset_color%}'
else
  if which rbenv &> /dev/null; then
    rvm_ruby='%{$fg[grey]%}‹$(rbenv version | sed -e "s/ (set.*$//")›%{$reset_color%}'
  fi
fi
local git_branch='$(git_prompt_info)%{$reset_color%}'

PROMPT="${current_dir} %B%(?.%F{magenta}.%F{red})${user_symbol}%f%b "
RPS1="%B${return_code} ${rvm_ruby} ${git_branch}%b"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"

