export PATH="/opt/homebrew/bin:$PATH"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=""
# ZSH_THEME="ys"
# ZSH_THEME="candy"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git 
    z
    zsh-autosuggestions
    #zsh-syntax-highlighting
    extract
    direnv
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias gdev="ssh chunxiang.yin@10.129.111.104 -A"
alias gss="cd ~/Projects/videosearch-ss/"
alias gus="cd ~/Projects/searchplt-us/"
alias gsa="cd ~/Projects/search-admin-service-monitor-api"

alias smcus="smc services enter --ecp -e live searchplt-us-live-id"
alias smcss="smc services enter --ecp -e live videosearch-ss-live-id"
alias tailf='tail -f'
alias pwdx='lsof -a -d cwd -p'

alias gbt='ssh  ubuntu@23.234.251.224 -p 11222'
#alias cat='bat'
alias ls='ls --color'
alias v='nvim'
alias gdv='cd /Users/chunxiang.yin/DeepVespa'
alias gdv9='ssh coder.almalinux8-dev.main'
alias cat='bat'




[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
killf() {
  ps -ef | fzf --header "Select process to kill" | awk "{print \\$2}" | xargs kill -9
}
alias p='fd --type f | fzf --preview "bat --color=always {}"'


# ss需要用到的配置
export CID=localdev
export SP_UNIX_SOCKET=/tmp/spex.sock


# go 相关
#export GOPATH="$HOME/go"
#export GOROOT="/opt/homebrew/Cellar/go@1.18/1.18.6/libexec"
#export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
#
#export PATH="/opt/homebrew/opt/go@1.18/bin:$PATH"
export PATH="$PATH:$HOME/go/bin"

# >>> xmake >>>
[[ -s "$HOME/.xmake/profile" ]] && source "$HOME/.xmake/profile" # load xmake profile
# <<< xmake <<<
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"



export DOCKER_HOST=unix:///Users/chunxiang.yin/.colima/default/docker.sock

export VESPA_CLI_HOME=/tmp
export GITSTATUS_LOG_LEVEL=DEBUG



function mcs {
  model_prompt="$*"
  magic-cli suggest "$model_prompt"
}

function mcf {
  model_prompt="$*"
  magic-cli search "$model_prompt"
}

function mca {
  model_prompt="$*"
  magic-cli ask "$model_prompt"
}

# jdk
export JAVA_HOME=/opt/homebrew/opt/openjdk@25
export PATH="/opt/homebrew/opt/openjdk@25/bin:$PATH"

# ccache
# export PATH="/opt/homebrew/opt/ccache/libexec:$PATH"


# gh copilot — 懒加载 ghcs / ghce
# gh copilot: 延迟到第一次调用时初始化
# gh copilot alias 实际上只定义了 ghcs 和 ghce 两个函数，所以占位这两个就够了
# 删掉 eval "$(gh copilot alias -- zsh)"
ghcs() {
    unfunction ghcs ghce 2>/dev/null
    eval "$(gh copilot alias -- zsh)"
    ghcs "$@"
}
ghce() {
    unfunction ghcs ghce 2>/dev/null
    eval "$(gh copilot alias -- zsh)"
    ghce "$@"
}


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/Users/chunxiang.yin/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/Users/chunxiang.yin/miniforge3/etc/profile.d/conda.sh" ]; then
#        . "/Users/chunxiang.yin/miniforge3/etc/profile.d/conda.sh"
#    else
#        export PATH="/Users/chunxiang.yin/miniforge3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
#
#if [ -f "/Users/chunxiang.yin/miniforge3/etc/profile.d/mamba.sh" ]; then
#    . "/Users/chunxiang.yin/miniforge3/etc/profile.d/mamba.sh"
#fi
# <<< conda initialize <<<

# devbox
#eval "$(direnv hook zsh)" 2>/dev/null

# 删掉 eval "$(devbox global shellenv --init-hook)" 2>/dev/null 
# devbox: 延迟初始化
devbox() {
    unfunction devbox
    eval "$(command devbox global shellenv --init-hook)" 2>/dev/null
    command devbox "$@"
}
DEVBOX_NO_PROMPT=false


# llvm
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"

export PATH="/opt/homebrew/opt/gnu-getopt/bin:$PATH"

# FlameGraph
export PATH="/Users/chunxiang.yin/GitHub/FlameGraph:$PATH"

# goenv
# 确保你的配置文件中是这样写的，而不是直接指向具体的 Cellar 目录
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$GOENV_ROOT/shims:$PATH"
# 懒加载 goenv 命令本身（仅在你手动执行 goenv install 等操作时才需要完整初始化）
goenv() {
    unfunction goenv
    eval "$(command goenv init -)"
    goenv "$@"
}

export GOROOT=$(go env GOROOT)
export PATH=$PATH:$GOROOT/bin


# starship
#eval "$(starship init zsh)"


#npm
# Homebrew 安装的 npm，使用实际路径代替
# export PATH="$(npm prefix -g)/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"


export EDITOR="nvim"
export VISUAL="$EDITOR"

# SSH SOCKS 代理由 launchd 管理，见 ~/Library/LaunchAgents/com.user.ssh-socks-proxy.plist
alias socks-up='launchctl bootstrap gui/$(id -u) ~/Library/LaunchAgents/com.user.ssh-socks-proxy.plist'
alias socks-down='launchctl bootout gui/$(id -u) ~/Library/LaunchAgents/com.user.ssh-socks-proxy.plist'
alias socks-log='tail -f /tmp/ssh-socks-proxy.err'


# 设置终端标题（包含主机名）
case "$TERM" in
xterm*|rxvt*|alacritty*|wezterm*)
    precmd() {
        if [[ -n "$SSH_CONNECTION" ]]; then
            # SSH 会话：显示 user@hostname:directory
            print -Pn "\e]0;%n@%m: %~\a"
        else
            # 本地会话：显示 user:directory
            print -Pn "\e]0;%n: %~\a"
        fi
    }
    ;;
esac


eval "$(starship init zsh)"

# bun completions
[ -s "/Users/chunxiang.yin/.bun/_bun" ] && source "/Users/chunxiang.yin/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# mise
# 日常命令走 shims 零开销，mise 命令本身才懒加载。
export PATH="$HOME/.local/share/mise/shims:$PATH"
# 删掉 eval "$(~/.local/bin/mise activate zsh)"
# mise: 延迟到第一次调用
mise() {
    unfunction mise
    eval "$(~/.local/bin/mise activate zsh)"
    mise "$@"
}

# 
set -o vi
