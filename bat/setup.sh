if [[ $INSTALL_DEPS == 1 ]]; then
  if [[ $OS == "macos" ]]; then
    brew install bat
  elif [[ $OS == "linux" ]]; then
    sudo apt install -y bat
  fi
fi

copy bat ~/.config/bat