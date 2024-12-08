if [[ $INSTALL_DEPS == 1 ]]; then
  if [[ $OS == "macos" ]]; then
    log "Installing homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    log "Installing deps for macos"
    brew bundle
  elif [[ $OS == "linux" ]]; then
    log "Installing deps for linux"
    sudo apt install -y tar curl build-essential cmake make ssh git
  fi
fi
