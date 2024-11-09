# Dotfiles

## Installation

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install git stow ripgrep fd fzf neovim mc lazygit gh nodejs npm 
cd ~
git clone https://github.com/roelandxyz/dotfiles.git
cd dotfiles
stow zsh vim zellij lazyvim mc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

download and install FiraMono Nerd Font
https://www.nerdfonts.com/font-downloads

### iTerm2 + Zellij (old)

Profile settings

General: Send text at start:

```
/opt/homebrew/bin/zellij a -c
```

Text: Font: FiraMono Nerd Font Mono  
Keys: Option: Esc+

### Open in terminal

https://github.com/Ji4n1ng/OpenInTerminal/blob/master/Resources/README-Lite.md

```
brew install --cask openinterminal-lite
brew install --cask openineditor-lite
defaults write wang.jianing.app.OpenInTerminal-Lite LiteDefaultTerminal iterm
```

### Vim

vim-plug

```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

:PlugInstall

### Tmux 

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

ctrl-B I

## Settings

### Git config

```
git config --global user.name "Roeland"
git config --global user.email "your github email"
gh auth login
```

### Set a blazingly fast keyboard repeat rate

```
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10
```
