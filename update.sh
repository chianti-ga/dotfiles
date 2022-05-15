#!/bin/bash
cd ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/
rm -rf powerlevel10k
cd ~
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
yes | cp -rf .zshrc ~
yes | cp -rf .p10k.zsh ~