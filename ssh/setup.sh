if [[ $INSTALL_DEPS == 1 ]]; then
  if [[ $OS == "linux" ]]; then
    sudo apt install -y ssh
  fi
fi

copy ssh ~/.ssh
