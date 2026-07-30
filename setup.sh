#!/usr/bin/env bash

# check stow is install, or use `brew install stow`
stow .
if [ -e "${HOME}/.zshrc" ]; then
	mv ${HOME}/.zshrc ${HOME}/.zshrc.bak
fi
cwd="$(cd "$(dirname "$0")" && pwd)"
ln -s ${cwd}/zsh/.zshrc ${HOME}/.zshrc

