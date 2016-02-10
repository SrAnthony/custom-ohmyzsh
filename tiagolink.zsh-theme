# ------------------------------------------------------------------------
# Juan G. Hurtado oh-my-zsh theme
# (Needs Git plugin for current_branch method)
# ------------------------------------------------------------------------

function git_custom_status() {
  local cb=$(current_branch)
  if [ -n "$cb" ]; then
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX%{$GREEN_BOLD%}$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

# Color shortcuts
CYAN=$fg[cyan]
MAGENTA=$fg[magenta]
RED=$fg[red]
YELLOW=$fg[yellow]
GREEN=$fg[green]
WHITE=$fg[white]
BLUE=$fg[blue]
RED_BOLD=$fg_bold[red]
YELLOW_BOLD=$fg_bold[yellow]
GREEN_BOLD=$fg_bold[green]
WHITE_BOLD=$fg_bold[white]
BLUE_BOLD=$fg_bold[blue]
RESET_COLOR=$reset_color

# Format for git_prompt_info()
ZSH_THEME_GIT_PROMPT_PREFIX="%{$WHITE%}em "
ZSH_THEME_GIT_PROMPT_SUFFIX=""

# Format for parse_git_dirty()
ZSH_THEME_GIT_PROMPT_DIRTY="%{$RED%}(*)"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Format for git_prompt_status()
ZSH_THEME_GIT_PROMPT_UNMERGED=" %{$RED%}unmerged"
ZSH_THEME_GIT_PROMPT_DELETED=" %{$RED%}deleted"
ZSH_THEME_GIT_PROMPT_RENAMED=" %{$YELLOW%}renamed"
ZSH_THEME_GIT_PROMPT_MODIFIED=" %{$YELLOW%}modified"
ZSH_THEME_GIT_PROMPT_ADDED=" %{$GREEN%}added"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" %{$CYAN%}untracked"

# ZSH_THEME_GIT_PROMPT_UNMERGED=" %{$RED%}§"
# ZSH_THEME_GIT_PROMPT_DELETED=" %{$RED%}✖"
# ZSH_THEME_GIT_PROMPT_RENAMED=" %{$YELLOW%}▴"
# ZSH_THEME_GIT_PROMPT_MODIFIED=" %{$YELLOW%}⚑"
# ZSH_THEME_GIT_PROMPT_ADDED=" %{$GREEN%}✚"
# ZSH_THEME_GIT_PROMPT_UNTRACKED=" %{$CYAN%}◒"

# Format for git_prompt_ahead()
ZSH_THEME_GIT_PROMPT_AHEAD=" ⚡"

# Format for git_prompt_long_sha() and git_prompt_short_sha()
ZSH_THEME_GIT_PROMPT_SHA_BEFORE="%{$WHITE%}[%{$YELLOW%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$WHITE%}]"

# Colors vary depending on time lapsed.
# ZSH_THEME_GIT_TIME_SINCE_COMMIT_SHORT="%{$fg[green]%}"
# ZSH_THEME_GIT_TIME_SHORT_COMMIT_MEDIUM="%{$fg[yellow]%}"
# ZSH_THEME_GIT_TIME_SINCE_COMMIT_LONG="%{$fg[red]%}"
# ZSH_THEME_GIT_TIME_SINCE_COMMIT_NEUTRAL="%{$fg[grey]%}"

# ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗%{$reset_color%}"
# ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔%{$reset_color%}"
# ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}✚ "
# ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%}⚑ "
# ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}✖ "
# ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%}▴ "
# ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[cyan]%}§ "
# ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[grey]%}◒ "

# Prompt format
PROMPT="
%{$WHITE%}╭─ %{$GREEN%}Link %{$RESET_COLOR%}%{$YELLOW%}%~%u%{$RESET_COLOR%} \$(git_custom_status)\$(git_prompt_short_sha)%{$RESET_COLOR%}\$(git_prompt_status) \$(parse_git_dirty)%{$WHITE%}
╰─ → %{$RESET_COLOR%}"
RPROMPT="%{$RED_BOLD%}\$(rvm-prompt)%{$RESET_COLOR%}"
