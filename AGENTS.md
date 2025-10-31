# Agent Guidelines for Dotfiles Repository

## Build/Lint/Test/Deploy Commands

This is a dotfiles repository with configurations for Neovim, WezTerm, and shell tools. No traditional build process exists. It uses GNU Stow for managing dotfiles.

- **Lua formatting**: `stylua .config/nvim/lua/`
- **Shell linting**: `shellcheck .zshrc` (if shellcheck is available)
- **No testing framework**: Manual verification required for config changes
- **Apply changes**: Use `stow <directory>` to symlink configurations (e.g., `stow .config` for Neovim configs)
- **Stow guide**: See STOW_GUIDE.md for comprehensive stow usage instructions

## Code Style Guidelines

### Lua (Neovim/WezTerm configs)
- **Indentation**: 2 spaces (no tabs)
- **Line length**: 120 characters maximum
- **Naming**: snake_case for variables/functions, PascalCase for modules
- **Imports**: Use `local` declarations at top of file
- **Error handling**: Use `pcall` for potentially failing operations
- **Comments**: Single-line comments with `--`, avoid block comments

### Shell (Zsh/Bash)
- **Indentation**: 2 spaces for readability
- **Naming**: UPPER_CASE for environment variables, lower_case for local vars
- **Error handling**: Use `set -e` in scripts, check exit codes
- **Quotes**: Always quote variables: `"$VAR"` not `$VAR`
- **Functions**: Use `function name() { ... }` syntax

### General
- **No trailing whitespace**
- **Unix line endings (LF)**
- **UTF-8 encoding**
- **Meaningful commit messages**: "feat: add new keybinding" not "update config"