#!/usr/bin/env zsh
#                     __
#    __  _____  ___  / /______
#   / / / / _ \/ _ \/ __/ ___/
#  / /_/ /  __/  __/ /_(__  )
#  \__, /\___/\___/\__/____/
# /____/
#                     _____
#   _________  ____  / __(_)___ _
#  / ___/ __ \/ __ \/ /_/ / __ `/
# / /__/ /_/ / / / / __/ / /_/ /
# \___/\____/_/ /_/_/ /_/\__, /
#                       /____/
#                       for his zsh theme
#this is a simple prompt for the zsh theme it presents git info using trendy little symbols and gives you the return code
#hopefull it is written well (as most of it is based on muse from zsh) i will now proceed to coment what parts do

setopt promptsubst 
autoload -U colors && colors
autoload -U add-zsh-hook
## sourceing the lib
source ${0:A:h}/lib/prompt_info_functions.zsh
source ${0:A:h}/lib/git.zsh
source ${0:A:h}/lib/theme-and-appearance.zsh
source ${0:A:h}/lib/spectrum.zsh

#--------------------{colours
PROMPT_SUCCESS_COLOR=$fg[green]%
PROMPT_FAILURE_COLOR=$fg[red]%
PROMPT_VCS_INFO_COLOR=$FG[242]
PROMPT_PROMPT=$FG[077]

GIT_DIRTY_COLOR=$fg[yellow]
GIT_CLEAN_COLOR=$fg[green]
GIT_PROMPT_INFO=$fg[cyan]
#----there are not more colours}
ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$GIT_PROMPT_INFO%})" 

ZSH_THEME_GIT_PROMPT_DIRTY=" %{$GIT_DIRTY_COLOR%}⚡"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$GIT_CLEAN_COLOR%}✔"

#-------------{git symbols if these show up you have some commiting to do
ZSH_THEME_GIT_PROMPT_ADDED="%{$FG[082]%} +%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$FG[166]%} !%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$FG[160]%} ø%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$FG[220]%} ➜%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$FG[082]%} ↯%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$FG[190]%} ❃%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg_bold[blue]%} ↓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg_bold[blue]%} ↑%{$reset_color%}"
#-------------------------------------------------git symbols are no more}

ZSH_THEME_VIRTUALENV_PREFIX=" ["
ZSH_THEME_VIRTUALENV_SUFFIX="]"

function zle-line-init zle-keymap-select { ## this function makes my right prompt. it gives me a vi normal mode indicator and also sets up a return code and a dir..printer??
    local dir='%{$PROMPT_SUCCESS_COLOR%}%~%'
    local return_code='%(?..%{$fg[red]%}%? ↵%{$reset_color%})'

    VIM_PROMPT="%{$fg_bold[yellow]%} <% N>%  %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} ${return_code} ${dir} $EPS1"
    zle reset-prompt
}

## Execution time script

function preexec() {
  timer=$(($(date +%s%0N)/1000000))
}

function precmd() {
  if [ $timer ]; then
    now=$(($(date +%s%0N)/1000000))
    elapsed=$(($now-$timer))

    export RPROMPT="%F{yellow}${elapsed}ms %{$reset_color%}"
    unset timer
  fi
}

#Prompts
local prompt_git='%{$GIT_PROMPT_INFO%}$(git_prompt_info)$(virtualenv_prompt_info)%{$GIT_DIRTY_COLOR%}$(git_prompt_status) %{$reset_color%}'
local prefix="%{$fg[blue]%}%n@%m %{$fg[magenta]%}%B  %1~%b"
local suffix='%(?.%{$PROMPT_SUCCESS_COLOR}.%{$PROMPT_FAILURE_COLOR})%}%  '

PROMPT="${prefix}${prompt_git}${suffix}%{$reset_color%}"
# PROMPT="${prefix}${suffix}%{$reset_color%}"
#zle -N zle-line-init
zle -N zle-keymap-select
