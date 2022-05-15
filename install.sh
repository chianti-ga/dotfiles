#!/bin/bash

function ask_remove_zsh {
  echo "shjkl"
  local response && read response
  if [[ $response == "y" || $response == "Y" || $response == "yes" || $response == "Yes" ]]
  then rm
  fi
}

function install {
  chsh -s /bin/zsh
}

exit 0