if [[ $INSTALL_DEPS == 1 ]]; then
  if [[ $OS == "macos" ]]; then
    brew install tmux
  elif [[ $OS == "linux" ]]; then
    sudo apt install -y tmux
  fi
fi

copy tmux ~/.config/tmux
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
