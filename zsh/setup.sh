if [[ $INSTALL_DEPS == 1 ]]; then
  if [[ $OS == "macos" ]]; then
    # Zplug
    curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
  elif [[ $OS == "linux" ]]; then
    sudo apt install -y zsh
    chsh
    curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
  fi
fi

copy zsh ~/.zsh
rm ~/.zshrc
ln -s ~/.zsh/zshrc ~/.zshrc
