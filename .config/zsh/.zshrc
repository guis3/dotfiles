# Auto Completion 
zstyle ':completion:*' completer _complete _ignored _correct _approximate
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' max-errors 1
zstyle ':completion:*' menu select
zstyle :compinstall filename '/home/gui/.config/zsh/.zshrc'

autoload -Uz compinit
compinit

# History
setopt INC_APPEND_HISTORY
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
HIST_STAMPS='mm/dd/yyyy'
bindkey -e

# Options
setopt autocd globdots nomatch menucomplete
setopt interactive_comments
unsetopt BEEP
unsetopt complete_aliases

# On-demand rehash
zshcache_time="$(date +%s%N)"

rehash_precmd() {
  if [[ -a /var/cache/zsh/pacman ]]; then
    local paccache_time="$(date -r /var/cache/zsh/pacman +%s%N)"
    if {{ zshcache_time < paccache_time }}; then
      rehash
      zshcache_time="$paccache_time"
    fi
  fi
}

autoload -U add-zsh-hook
add-zsh-hook -Uz precmd rehash_precmd

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

## Files and Plugins
# Functions
source "$ZDOTDIR/zsh-functions"

# Source Files
zsh_add_file "zsh-aliases"
zsh_add_file "zsh-env"
zsh_add_file "zsh-keybinds"
zsh_add_file "prompt/yeet-theme.zsh-theme"
source "/usr/share/fzf/key-bindings.zsh"
source "/usr/share/fzf/completion.zsh"

# Plugins
zsh_add_plugin "zsh-autosuggestions"
zsh_add_plugin "zsh-clipboard"
zsh_add_plugin "zsh-colored-man-pages"
zsh_add_plugin "zsh-copybuffer"
zsh_add_plugin "zsh-copyfile"
zsh_add_plugin "zsh-copypath"
zsh_add_plugin "zsh-dirhistory"
zsh_add_plugin "zsh-sudo"
zsh_add_plugin "zsh-catppuccin-syntax-highlighting"
zsh_add_plugin "zsh-syntax-highlighting"
zsh_add_plugin "zsh-you-should-use"
zsh_add_plugin "zsh-notify"

## Autorun
# pfetch
# neofetch
nitch
