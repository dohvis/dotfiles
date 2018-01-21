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
  sudo apt-get install curl
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
  chsh -s /bin/zsh
}

install_theme() {
  mkdir $HOME/.zFunctions  
  git clone git@github.com:denysdovhan/spaceship-prompt.git
  ln -s $PWD/spaceship-prompt/spaceship.zsh $HOME/.zFunctions/prompt_spaceship_setup
  echo "fpath=( "$HOME/.zfunctions" $fpath )" >> ~/.zshrc
  echo "autoload -U promptinit; promptinit; prompt spaceship" >> ~/.zshrc
  sed -i "s/ZSH_THEME=\"[a-z]*\"/ZSH_THEME=\"\"/g" ~/.zshrc
}

install_plugins() {
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

#python
#install_zsh
#omz
#install_theme
#install_plugins
#neovim

