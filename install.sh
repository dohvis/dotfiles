python() {
  sudo apt-get update
  sudo apt-get install python-dev python-pip python3-dev python3-pip
}
fish() {
  sudo apt-add-repository ppa:fish-shell/release-2
  sudo apt-get update
  sudo apt-get install fish
}

zsh() {
  echo 'Not implement'
}

neovim() {
  sudo apt-get install software-properties-common
  sudo add-apt-repository ppa:neovim-ppa/stable
  sudo apt-get update
  sudo apt-get install neovim
}

venv() {
  pip install virtualenv virtualenvwrapper --user
}

python
fish
# zsh
# neovim
