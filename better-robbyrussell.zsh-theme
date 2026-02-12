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
  DIR_NAME_INFO=$(dir_name_truncated)
}

conditional_space() {
  if [[ -n "$AWS_PROFILE_INFO" || -n "$GIT_BRANCH_INFO" ]]; then
    echo " "
  fi
}

PROMPT="%(?:%{$fg_bold[green]%}%1{➜%}:%{$fg_bold[red]%}%1{➜%}) %{$fg[cyan]%}\$DIR_NAME_INFO%{$reset_color%} "
PROMPT+='$AWS_PROFILE_INFO$GIT_BRANCH_INFO'
PROMPT+='$(conditional_space)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

dir_name_truncated() {
  local dir_name=$(print -P %c)
  if [[ -n "$TRUNCATED_DIR_NAME_LENGTH" && ${#dir_name} -gt $TRUNCATED_DIR_NAME_LENGTH ]]; then
    dir_name="${dir_name:0:$TRUNCATED_DIR_NAME_LENGTH}"
  fi
  echo "$dir_name"
}

git_prompt_info_truncated() {
  local ref=$(git symbolic-ref HEAD 2> /dev/null)
  if [[ -n $ref ]]; then
    local branch_name=${ref#refs/heads/}
    if [[ -n "$TRUNCATED_BRANCH_NAME_LENGTH" && ${#branch_name} -gt $TRUNCATED_BRANCH_NAME_LENGTH ]]; then
      branch_name="${branch_name:0:$TRUNCATED_BRANCH_NAME_LENGTH}"
    fi
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX$branch_name$ZSH_THEME_GIT_PROMPT_CLEAN$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}