# Dotfiles

## Installation

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install git stow ripgrep fd fzf neovim alacritty mc lazygit 
git clone https://github.com/roelandxyz/dotfiles.git  
stow zsh vim tmux nvim mc alacritty  
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim  

download and install FiraMono Nerd Font
https://www.nerdfonts.com/font-downloads


git config --global user.name "Roeland"  
git config --global user.email "your github email"  
