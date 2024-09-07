# Dotfiles

## Installation

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install git stow ripgrep fd fzf neovim alacritty mc lazygit gh
git clone https://github.com/roelandxyz/dotfiles.git  
stow zsh vim tmux nvim mc alacritty  
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim  

download and install FiraMono Nerd Font
https://www.nerdfonts.com/font-downloads


git config --global user.name "Roeland"  
git config --global user.email "your github email"  
gh auth login      

# https://github.com/mathiasbynens/dotfiles/blob/main/.macos

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
