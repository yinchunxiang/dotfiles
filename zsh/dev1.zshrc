
alias sracl='cd /home/coder/sra-toolkit; claude'


# 自定义修改标题的函数
set_ghostty_title() {
  # %n = 用户名, %m = 短主机名
  print -Pn "\e]0;coder.dev1\a"
}

# 强行把我们的函数追加到 Zsh 的预执行钩子中
# 这样即便 Starship 修改了标题，我们的函数也会在最后一步把它纠正回来
autoload -Uz add-zsh-hook
add-zsh-hook precmd set_ghostty_title
