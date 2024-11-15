# My Dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have to following installed on your system

### Git

```
sudo apt-get install git
```

### Stow

```
sudo apt-get install stow
```

## Installation

Make zsh the default shell for Linux:

```
sudo apt install -y zsh
chsh -s $(which zsh)
```

Install oh-my-zsh

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Check out dotfiles repo in $HOME directory

```
git clone https://github.com/eldridgerdev/mydotfiles.git
cd dotfiles
```

Use Stow to create symlinks

```
stow .
```

Copy wezterm files

```
cp ./.wezterm/.wezterm.lua $WINDOWS_HOME
cp -r ./.wezterm/backgrounds/ $WINDOWS_HOME
```

TODO: add .bashrc, dircolors, etc
Customize zsh
```
https://blog.joaograssi.com/windows-subsystem-for-linux-with-oh-my-zsh-conemu/
```
from oh-my-zsh plugins folder
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

```
