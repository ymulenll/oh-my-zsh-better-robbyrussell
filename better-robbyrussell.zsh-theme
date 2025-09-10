aws_prompt_info() {}

aws_profile_info() {
  local profile=$(agp)
  if [[ -n $profile && $profile != "default" ]]; then
    echo "%{$fg_bold[yellow]%}[$profile]%{$reset_color%}"
  fi
}

# Function to update git and aws profile info before each prompt
precmd() {
  GIT_BRANCH_INFO=$(git_prompt_info_truncated)
  AWS_PROFILE_INFO=$(aws_profile_info)
}

conditional_space() {
  if [[ -n "$AWS_PROFILE_INFO" || -n "$GIT_BRANCH_INFO" ]]; then
    echo " "
  fi
}

PROMPT="%(?:%{$fg_bold[green]%}%1{➜%}:%{$fg_bold[red]%}%1{➜%}) %{$fg[cyan]%}%c%{$reset_color%} "
PROMPT+='$AWS_PROFILE_INFO$GIT_BRANCH_INFO'
PROMPT+='$(conditional_space)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

TRUNCATED_BRANCH_NAME_LENGTH=7

git_prompt_info_truncated() {
  local ref=$(git symbolic-ref HEAD 2> /dev/null)
  if [[ -n $ref ]]; then
    local branch_name=${ref#refs/heads/}
    if [[ ${#branch_name} -gt $TRUNCATED_BRANCH_NAME_LENGTH ]]; then
      branch_name="${branch_name:0:$TRUNCATED_BRANCH_NAME_LENGTH}"
    fi
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX$branch_name$ZSH_THEME_GIT_PROMPT_CLEAN$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}