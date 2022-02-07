# ghcup
[ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# cargo
source "$HOME/.cargo/env"