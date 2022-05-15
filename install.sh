#!/bin/bash

function ask_remove_zsh {
    local response && read response
    if [[ $response == "y" || $response == "Y" || $response == "yes" || $response == "Yes" ]]
    then remove_zsh
    fi
}

function remove_zsh {
    if [[ grep -q "Debian" <<< lsb_release -a; || grep -q "Ubuntu" <<< lsb_release -a;]]
    then sudo apt remove zsh; chsh -s $(which bash)
    fi

    if [[ grep -q "Arch" <<< lsb_release -a; || grep -q "Manjaro" <<< lsb_release -a;]]
    then sudo pacman -Rsn zsh; chsh -s $(which bash)
    fi
}


function install {
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    cp .zshrc ~
    chsh -s $(which zsh)
    typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
}

ask_remove_zsh
install