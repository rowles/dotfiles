#  
#  __________       .__     
#  \____    /  _____|  |__  
#    /     /  /  ___/  |  \ 
#   /     /_  \___ \|   Y  \
#  /_______ \/____  >___|  /
#          \/     \/     \/ 
#  Andrew Rowles

# Name of the theme to load.
ZSH_THEME="agnoster"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git sublime brew sublime)

# You may need to manually set your language environment
export LANG=en_US.UTF-8

#########################################
# History

HISTDIR="${HOME}/.history/$(date -u +%Y/%m/)"
mkdir -p ${HISTDIR}

HISTFILE="${HISTDIR}$(date -u +%d.%H.%M.%S)_$(HOSTNAME).history"
HISTTIMEFORMAT='%F %T '

HISTSIZE=200000
HISTFILESIZE=200000


#########################################
# Alias

alias vi="vim"
alias tmux="TERM=screen-256color-bce tmux"

alias sta="git status"


#########################################
# Prompt
# [ user:pwd on master * ]
# >

function collapse_pwd {
  echo $(pwd | sed -e "s,^$HOME,~,")
}

PROMPT='%{$fg[white]%}[%{$reset_color%} %n%{$fg[white]%}:%{$reset_color%}$(collapse_pwd)$(git_prompt_info) %{$fg[white]%}]%{$reset_color%}
%{$fg[magenta]%}>%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} *"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[yellow]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""


