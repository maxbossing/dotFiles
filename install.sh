#!/usr/bin/env bash

DIR="$(pwd)"


function install_packages() {
  echo "Updating..."
  sudo pacman -Syu --noconfirm
  echo "Installing packages from pacman..."
  sudo pacman -S --needed --noconfirm - < packages.txt
}

#
# Installs programs not in the repos
#
function install_compiled() {
  # Paru
  echo "Installing paru..."
  git clone https://aur.archlinux.org/paru.git
  cd paru
  makepkg -si --noconfirm
  cd ..
  rm -rf paru

  # dwm
  echo "Installing dwm..."
  cd dwm
  sudo make clean install
  cd ..

  # dmenu
  echo "Installing dmenu"
  cd dmenu
  sudo make clean install
  cd ..
  
  # st
  echo "Installing st..."
  cd st
  sudo make clean install
  cd ..

  echo "Finished installing compiled programms..."
}

#
# Links dotfiles
#
function link() {

  echo "Linking files..."
  
  rm -rf "$HOME/tmux.conf"
  ln -s "$DIR/tmux.conf" "$HOME"

  rm -rf "$HOME/.conkyrc" 
  ln -s "$DIR/.conkyrc" "$HOME"

  rm -rf "$HOME/.xinitrc"
  ln -s "$DIR/.xinitrc" "$HOME"

  rm -rf "$HOME/.gitconfig"
  ln -s "$DIR/.gitconfig" "$HOME"

  rm -rf "$HOME/.config/mutt"
  ln -s "$DIR/.config/mutt" "$HOME/.config/"

  rm -rf "$HOME/.config/alacritty"
  ln -s "$DIR/.config/alacritty" "$HOME/.config/"

  rm -rf "$HOME/.config/nvim"
  ln -s "$DIR/.config/nvim" "$HOME/.config/"

  rm -rf "$HOME/.config/bspwm"
  ln -s "$DIR/.config/bspwm" "$HOME/.config/" 

  rm -rf "$HOME/.config/picom.conf"
  ln -s "$DIR/.config/picom.conf" "$HOME/.config/"
  
  rm -rf "$HOME/.config/fish"
  ln -s "$DIR/.config/fish" "$HOME/.config/"

  rm -rf "$HOME/.config/polybar"
  ln -s "$DIR/.config/polybar" "$HOME/.config/"

  rm -rf "$HOME/.config/hypr"
  ln -s "$DIR/.config/hypr" "$HOME/.config/"

  rm -rf "$HOME/.config/rofi"
  ln -s "$DIR/.config/rofi" "$HOME/.config/"

  rm -rf "$HOME/.config/i3"
  ln -s "$DIR/.config/i3" "$HOME/.config/"

  rm -rf "$HOME/.config/starship.toml"
  ln -s "$DIR/.config/starship.toml" "$HOME/.config/"

  rm -rf "$HOME/.config/i3status"
  ln -s "$DIR/.config/i3status" "$HOME/.config/" 

  rm -rf "$HOME/.config/sxhkd"
  ln -s "$DIR/.config/sxhkd" "$HOME/.config/"

  rm -rf "$HOME/.config/kitty"
  ln -s "$DIR/.config/kitty" "$HOME/.config/"

  rm -rf "$HOME/.config/waybar"
  ln -s "$DIR/.config/waybar" "$HOME/.config/"

  rm -rf "$HOME/.config/mc"
  ln -s "$DIR/.config/mc" "$HOME/.config/"

  rm -rf "$HOME/.config/wofi"
  ln -s "$DIR/.config/wofi" "$HOME/.config/"
  
  echo "Finished linking dotfiles..."
}


function main() {
  install_packages()
  install_compiled()
  link()

  echo "Changing Shell..."
  chsh -s /usr/bin/fish

  echo "Finished!"
}

main()
