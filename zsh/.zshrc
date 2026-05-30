
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"

alias v='nvim'
alias codex='codex --ask-for-approval never'
alias ls='ls --color'
alias claude='claude --dangerously-skip-permissions'
alias codex='codex --dangerously-bypass-approvals-and-sandbox'

@codex() {
  codex exec "$@"
}




# Plugin bootstrap
autoload -Uz compinit
compinit
eval "$(sheldon source)"


eval "$(mise activate zsh)"

export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"

[[ -r "$HOME/.local/bin/env" ]] && . "$HOME/.local/bin/env"

case "$(hostname)" in
  coder-chunxiangyin-dev1-6f57bc6fcc-bthz4)
    [[ -r "${ZDOTDIR:-$HOME}/dev1.zshrc" ]] && source "${ZDOTDIR:-$HOME}/dev1.zshrc"
    ;;
  coder-chunxiangyin-dev2-775445566d-2lm68)
    [[ -r "${ZDOTDIR:-$HOME}/dev2.zshrc" ]] && source "${ZDOTDIR:-$HOME}/dev2.zshrc"
    ;;
esac
