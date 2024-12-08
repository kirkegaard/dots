if [[ $INSTALL_DEPS == 1 ]]; then
  if [[ $OS == "macos" ]]; then
    brew install mutt
  elif [[ $OS == "linux" ]]; then
    sudo apt install -y mutt
  fi
fi

copy mutt ~/.config/mutt
