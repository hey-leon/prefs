#
# installs all core utils
#

setup_sudo() {
  echo "this script will need su access"

  if ! sudo -v; then
    exit 1
  fi
}

setup_brew() {
  if ! type brew; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi
}

setup_pkgs() {
  brew tap homebrew/cask-fonts
  brew bundle
}

setup_dots() {
  stow dots -R
}

setup_zshl() {
  zsh=`brew --prefix`/bin/zsh &> /dev/null

  if ! cat /etc/shells | grep "$zsh"; then
    echo "\n$zsh" | tee -a /etc/shells
  fi

  sudo chsh -s $zsh $USER
}

bootstrap() {
  setup_sudo
  setup_brew &> /dev/null
  setup_pkgs &> /dev/null
  setup_dots &> /dev/null
  setup_zshl &> /dev/null
}

if bootstrap; then
  echo "fuk ye, all done"
  echo
else
  echo "shits cooked"
  echo
fi
