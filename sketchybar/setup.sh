if [[ $INSTALL_DEPS == 1 ]]; then
  if [[ $OS == "macos" ]]; then
    brew tap FelixKratz/formulae
    brew install sketchybar
  fi
fi

# Only for macos
if [[ $OS == "macos" ]]; then
  copy sketchybar ~/.config/sketchybar
fi