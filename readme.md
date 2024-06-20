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
cp ./.wezterm/wezterm.lua $WINDOWS_HOME
cp ./.wezterm/backgrounds/ $WINDOWS_HOME
```
