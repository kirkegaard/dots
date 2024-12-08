if [[ $INSTALL_DEPS == 1 ]]; then
  if [[ $OS == "linux" && $INSTALL_GUI == 1 ]]; then
    sudo apt install -y i3
  fi
fi

# Only for linux
if [[ $OS == "linux" ]]; then
  copy i3 ~/.config/i3
fi
