if [[ $INSTALL_DEPS == 1 && $INSTALL_GUI == 1 ]]; then
  if [[ $OS == "linux" ]]; then
    sudo apt install -y polybar
  fi
fi

# Only for linux
if [[ $OS == "linux" ]]; then
  copy polybar ~/.config/polybar
fi
