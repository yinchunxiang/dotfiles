
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"

alias v='nvim'
alias codex='codex --ask-for-approval never'
alias ls='ls --color'
alias claude='claude --dangerously-skip-permissions'
alias codex='codex --dangerously-bypass-approvals-and-sandbox'


# Plugin bootstrap
autoload -Uz compinit
compinit
eval "$(sheldon source)"


eval "$(mise activate zsh)"

export STARSHIP_HOSTNAME="coder.dev2"
eval "$(starship init zsh)"
