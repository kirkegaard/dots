if [[ $INSTALL_DEPS == 1 ]]; then
  if [[ $OS == "linux" && $INSTALL_GUI == 1 ]]; then
    sudo apt install -y dunst
  fi
fi

# Only for linux
if [[ $OS == "linux" ]]; then
  copy dunst ~/.config/dunst
fi
