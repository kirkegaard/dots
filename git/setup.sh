if [[ $INSTALL_DEPS == 1 ]]; then
  if [[ $OS == "macos" ]]; then
    brew install git
  elif [[ $OS == "linux" ]]; then
    sudo apt install -y git
  fi
fi

copy gitconfig ~/.gitconfig
copy gitignore ~/.gitignore
