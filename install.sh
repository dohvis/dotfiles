python() {
  sudo apt-get update
  sudo apt-get install python-dev python-pip python3-dev python3-pip
}

fish() {
  sudo apt-add-repository ppa:fish-shell/release-2
  sudo apt-get update
  sudo apt-get install fish
}

install_zsh() {
  sudo apt-get update
  sudo apt-get install zsh
}

omz() {
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
  chsh -s /bin/zsh
}

install_theme() {
  local themes_dir=$HOME/.oh-my-zsh/custom
  mkdir ${themes_dir}/themes
  # curl -o - https://raw.githubusercontent.com/denysdovhan/spaceship-zsh-theme/master/install.zsh | zsh
  # sed -i "s/ZSH_THEME=\"[a-z]*\"/ZSH_THEME=\"spaceship\"/g" ~/.zshrc
}

neovim() {
  sudo apt-get install software-properties-common
  sudo add-apt-repository ppa:neovim-ppa/stable
  sudo apt-get update
  sudo apt-get install neovim
}

venv() {
  sudo pip install virtualenv virtualenvwrapper
}

#python
# install_zsh
#omz
install_theme
# neovim
