if [[ $INSTALL_DEPS == 1 ]]; then
  if [[ $OS == "macos" ]]; then
    brew install koekeishiya/formulae/yabai
  fi
fi

# Only install on macos
if [[ $OS == "macos" ]]; then
  copy yabai ~/.config/yabai
  echo "$(whoami) ALL=(root) NOPASSWD: sha256:$(shasum -a 256 $(which yabai) | cut -d " " -f 1) $(which yabai) --load-sa" | sudo tee /private/etc/sudoers.d/yabai
  yabai --restart-service
fi
