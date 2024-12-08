if [[ $INSTALL_DEPS == 1 ]]; then
  if [[ $OS == "macos" ]]; then
    brew install ncmpcpp
  elif [[ $OS == "linux" && $INSTALL_GUI == 1 ]]; then
    sudo apt install -y ncmpcpp
  fi
fi

copy ncmpcpp ~/.config/ncmpcpp
