#!/bin/bash

echo "Isntalling.."

cd ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/
rm -rf powerlevel10k
cd ~/dotfiles
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
rm ~/.zshrc; cp .zshrc ~
rm ~/.p10k.zsh; cp .p10k.zsh ~
rm ~/.tmux.conf; cp .tmux.conf ~
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
