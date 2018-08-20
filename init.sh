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
    echo | /usr/bin/ruby -e "`curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install`"
  fi
}

setup_nvm() {
  if ! -d ~/.nvm; then
    mkdir ~/.nvm
  fi

  if ! type nvm; then
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
  fi
}

setup_rvm() {
  if ! type rvm; then
    curl -sSL https://get.rvm.io | bash
  fi
}

setup_pkgs() {
  brew tap homebrew/cask-fonts
  brew tap homebrew/cask-versions
  brew bundle
}

setup_dots() {
  stow dots -R
}

setup_zshl() {
  zsh=`brew --prefix`/bin/zsh

  if ! cat /etc/shells | grep "$zsh"; then
    echo "$zsh" | sudo tee -a /etc/shells
  fi

  sudo chsh -s $zsh $USER
}

setup_code() {
  ln -s ~/.prefs/dots/.config/vscode/settings.json Library/Application\ Support/Code/User/settings.json
  ln -s ~/.prefs/dots/.config/vscode/keybindings.json Library/Application\ Support/Code/User/keybindings.json
  ln -s ~/.prefs/dots/.config/vscode/snippets Library/Application\ Support/Code/User/snippets
}

bootstrap() {
  setup_sudo
  setup_brew &> /dev/null
  setup_pkgs &> /dev/null
  setup_nvm  &> /dev/null
  setup_rvm  &> /dev/null
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
