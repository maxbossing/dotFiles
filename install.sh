install_packages() {
  echo "Updating..."
  sudo pacman -Syu --noconfirm
  echo "Installing packages from pacman..."
  sudo pacman -S --needed --noconfirm - < packages.txt
}

install_compiled() {
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
}

main() {
  install_packages
  install_compiled
}

main
