#!/bin/bash

if [[ "$1" = "debian" || "$1" = "ubuntu" ]]
then sudo bash -c "apt update -y && apt install -y  curl zsh"
elif [[ "$1" = "arch" ]]
then sudo pacman -Syu curl zsh
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
cp .zshrc ~
cp .p10k.zsh ~