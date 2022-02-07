# zsh plugin
bindkey -e
source ~/.zplug/init.zsh
set completion-ignore-case on
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "chrissicool/zsh-256color"
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
export LANG=ja_JP.UTF-8
export LC_TYPE=ja_JP.UTF-8
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)
export AUTOSUGGESTION_ACCEPT_RIGHT_ARROW=1
export ZSH_AUTOSUGGEST_USE_ASYNC=1
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=100000
setopt correct
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt EXTENDED_HISTORY
setopt share_history
fpath=($HOME/.zplug/repos/zsh-users/zsh-completions/src $fpath)
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down
zplug load
eval "$(starship init zsh)"