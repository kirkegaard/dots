if [[ $INSTALL_DEPS == 1 ]]; then
  if [[ $OS == "macos" ]]; then
    brew install neovim
  elif [[ $OS == "linux" ]]; then
    pushd /tmp > /dev/null
    sudo apt install -y luarocks
    curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
    sudo rm -rf /opt/nvim
    sudo tar -C /opt -xzf nvim-linux64.tar.gz
    sudo ln -s /opt/nvim-linux64/bin/nvim /usr/local/bin/nvim
    popd> /dev/null
  fi
fi

copy nvim ~/.config/nvim
