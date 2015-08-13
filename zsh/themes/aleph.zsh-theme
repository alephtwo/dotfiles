local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
 
 ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}±‹"
 ZSH_THEME_GIT_PROMPT_SUFFIX="›%{$reset_color%}"
  
  ZSH_THEME_HG_PROMPT_PREFIX=""
  function hg_prompt_info {
        hg prompt --angle-brackets "%{$fg[yellow]%}☿‹%{$fg[red]%}<branch>%{$reset_color%}<${fg[green]%}@<bookmark>%{$reset_color%}>.%{$fg[blue]%}<tags|,><status|modified|unknown><update>%{$reset_color%}›" 2>/dev/null
  }
   
   PROMPT='%{$fg[green]%}%n%{$reset_color%} %2~ $(hg_prompt_info)$(git_prompt_info)%{$reset_color%}%B»%b '
   RPS1="${return_code}"

