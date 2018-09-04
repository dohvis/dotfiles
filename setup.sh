#!/bin/bash

ZSH_CUSTOM=~/.oh-my-zsh/custom

python() {
  sudo apt-get update
  sudo apt-get install -y python-dev python-pip python3-dev python3-pip
}


install_zsh() {
  sudo apt-get update
  sudo apt-get install -y zsh
}

install_omz() {
  sudo apt-get install -y curl
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
}


install_zsh_theme() {
  #mkdir $HOME/.zFunctions
  git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
  ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
  sed -i "s/ZSH_THEME=\"[a-z]*\"/ZSH_THEME=\"spaceship\"/g" ~/.zshrc
}

install_zsh_plugins() {
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  sed -i "s/^plugins=(/plugins=\(\n  zsh-autosuggestions\n/g" ~/.zshrc
}

neovim() {
  sudo apt-get install -y software-properties-common
  sudo add-apt-repository ppa:neovim-ppa/stable
  sudo apt-get update
  sudo apt-get install -y neovim
  echo "alias vi='nvim'" >> ~/.zshrc
}

venv() {
  sudo pip install virtualenv virtualenvwrapper
}

python
install_zsh
install_omz
install_zsh_theme
install_zsh_plugins
neovim

