# Stow Usage Guide

GNU Stow is a symlink farm manager used in this dotfiles repository to manage configuration files.

## Overview

Stow allows you to keep your dotfiles in a central repository and create symlinks to the appropriate locations in your home directory. This keeps your home directory clean while allowing easy version control and sharing of configurations.

## Basic Usage

- **Stow a package**: `stow <package>` - Creates symlinks for the package (e.g., `stow .config`)
- **Unstow a package**: `stow -D <package>` - Removes the symlinks for the package
- **Restow a package**: `stow -R <package>` - Unstows and then stows again, useful for updating

## Packages in this repository

- `.config` - Neovim, GIMP, and other application configs
- `.wezterm` - WezTerm terminal emulator config
- `backgrounds` - Background images
- `zsh` - Zsh shell configuration

## Handling Conflicts

If stow reports conflicts (e.g., existing files), you may need to:

1. Backup existing files: `mv ~/.config/somefile ~/.config/somefile.backup`
2. Remove existing files/directories: `rm -rf ~/.config/somepackage`
3. Then run `stow .config`

Use `stow --adopt <package>` to incorporate existing files into the stow package (caution: this moves files into the repo).

## Examples

```bash
# Apply all configs
stow .config .wezterm backgrounds

# Update after changes
stow -R .config

# Remove configs
stow -D .config
```