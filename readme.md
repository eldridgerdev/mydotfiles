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
