#!/bin/bash

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
cp .zshrc ~
chsh -s $(which zsh)
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet