# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt nomatch
unsetopt autocd beep notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/coder/.zshrc'

# Homebrew (Apple Silicon, Intel macOS, or Linuxbrew)
if [[ -x /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv zsh)"
elif [[ -x /usr/local/bin/brew ]]; then
  eval "$(/usr/local/bin/brew shellenv zsh)"
elif [[ -x /home/linuxbrew/.linuxbrew/bin/brew ]]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"
fi
export PATH="$HOME/.local/bin:$PATH"

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
if command -v sheldon >/dev/null 2>&1; then
  eval "$(sheldon source)"
fi


if command -v mise >/dev/null 2>&1; then
  eval "$(mise activate zsh)"
fi

export STARSHIP_CONFIG=~/.config/starship/starship.toml
if command -v starship >/dev/null 2>&1; then
  eval "$(starship init zsh)"
fi

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
