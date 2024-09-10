# Dotfiles

## Installation

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install git stow ripgrep fd fzf neovim alacritty mc lazygit gh tmux nodejs npm  
cd ~
git clone https://github.com/roelandxyz/dotfiles.git  
cd dotfiles
stow zsh vim tmux nvim mc alacritty  
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim  
```
download and install FiraMono Nerd Font
https://www.nerdfonts.com/font-downloads

### Tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ctrl-B I

### Open in terminal
https://github.com/Ji4n1ng/OpenInTerminal/blob/master/Resources/README-Lite.md
```
brew install --cask openinterminal-lite
brew install --cask openineditor-lite
defaults write wang.jianing.app.OpenInTerminal-Lite LiteDefaultTerminal Alacritty
```

## Settings

### Git config

git config --global user.name "Roeland"  
git config --global user.email "your github email"  
gh auth login      


https://github.com/mathiasbynens/dotfiles/blob/main/.macos

### Set a blazingly fast keyboard repeat rate
```
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10
```

