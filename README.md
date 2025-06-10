# 🛠️ Dotfiles — My macOS Configs

This repository contains my personal configuration files for:

- 📝 [Neovim](https://neovim.io/)
- 🧃 [SketchyBar](https://felixkratz.github.io/SketchyBar/)
- 🪐 [Aerospace](https://aerospace.windowmanager.org/)

Everything is symlinked and organized for easy setup across machines.

---

## 📦 Tools Included

### 📝 Neovim
Location: `~/.config/nvim`

Custom configuration for Neovim with:
- Plugin manager (e.g. lazy.nvim, packer)
- LSP support
- Treesitter
- Custom keymaps & UI

### 🧃 SketchyBar
Location: `~/.config/sketchybar`

SketchyBar setup to show:
- Spaces
- Active window title
- Clock, Wi-Fi, battery, etc.
- Uses [Hack Nerd Font](https://www.nerdfonts.com/font-downloads)

### 🪐 Aerospace
Location: `~/.aerospace.toml`

Minimal tiling window manager config for macOS:
- Per-monitor workspace setup
- Keybindings for window and space navigation
- Integration with SketchyBar

---

## 🚀 Installation

### 1. Clone the repo

```bash
git clone https://github.com/yourusername/dotfiles ~/.dotfiles
cd ~/.dotfiles

