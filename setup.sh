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

install_omz() {
  sudo apt-get install curl
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
  chsh -s /bin/zsh
}

install_zsh_theme() {
  mkdir $HOME/.zFunctions  
  git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
  ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
  echo "fpath=( "$HOME/.zfunctions" $fpath )" >> ~/.zshrc
  echo "autoload -U promptinit; promptinit; prompt spaceship" >> ~/.zshrc
  sed -i "s/ZSH_THEME=\"[a-z]*\"/ZSH_THEME=\"spaceship\"/g" ~/.zshrc
}

install_zsh_plugins() {
  mkdir $HOME/.oh-my-zsh/custom/plugins
  git clone git://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
  sed -i "s/)$/ zsh-autosuggestions)/g" ~/.zshrc
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

python
install_zsh
install_omz
install_zsh_theme
install_zsh_plugins
neovim

