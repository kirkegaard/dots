if [[ $INSTALL_DEPS == 1 ]]; then
  if [[ $OS == "macos" ]]; then
    brew install koekeishiya/formulae/skhd
  fi
fi

# Only for macos
if [[ $OS == "macos" ]]; then
  copy skhd ~/.config/skhd
  skhd --restart-service
fi