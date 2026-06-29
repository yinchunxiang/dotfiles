eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"

alias v='nvim'
alias codex='codex --ask-for-approval never'
alias ls='ls --color'
alias claude='claude --dangerously-skip-permissions'
alias codex='codex --dangerously-bypass-approvals-and-sandbox'
alias ll='ls -al'
alias tailf='tail -f'

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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if command -v wt >/dev/null 2>&1; then eval "$(command wt config shell init zsh)"; fi

# 最后加载 local 配置
[[ -r "${ZDOTDIR:-$HOME}/local.zshrc" ]] && source "${ZDOTDIR:-$HOME}/local.zshrc"
