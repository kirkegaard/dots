if [[ $INSTALL_DEPS == 1 ]]; then
  if [[ $OS == "macos" ]]; then
    brew install neofetch
  elif [[ $OS == "linux" && $INSTALL_GUI == 1 ]]; then
    sudo apt install -y neofetch
  fi
fi

copy neofetch ~/.config/neofetch
