ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}±‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="›%{$reset_color%}"

local hg_prefix="%{$fg[yellow]%}☿"
local hg_info="%{$fg[red]%}{branch}%{$reset_color%}${fg[green]%}{@{bookmark}}%{$reset_color%}%{$fg[blue]%}{status|modified|unknown}{update}%{$reset_color%}"

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

function hg_prompt_info {
  hg prompt "${hg_prefix}‹${hg_info}›" 2>/dev/null
}

PROMPT='%{$fg[green]%}%n%{$reset_color%} %2~ $(hg_prompt_info)$(git_prompt_info)%{$reset_color%}%B»%b '
RPS1="${return_code}"
