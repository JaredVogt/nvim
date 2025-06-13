# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Neovim Configuration Structure

This is a modular Lua-based Neovim configuration using **lazy.nvim** as the plugin manager.

### Architecture Overview

- **`init.lua`** - Entry point that bootstraps lazy.nvim and loads core modules in specific order:
  1. Loads keymaps first (to set leader key early)
  2. Initializes lazy.nvim plugin system
  3. Loads options and autocmds
  4. Sets up basic autocmds

- **`lua/core/`** - Core configuration modules:
  - `keymaps.lua` - Key mappings (leader key is Space)
  - `options.lua` - Vim options and editor settings
  - `autocmds.lua` - Auto commands (auto-save functionality)
  - `colorscheme.lua` - Color scheme configuration (onedark)

- **`lua/plugins/`** - Plugin configurations:
  - `init.lua` - Central plugin registry that loads individual configs
  - Individual plugin files for each plugin (e.g., `telescope.lua`, `oil.lua`)

### Common Development Tasks

When modifying this configuration:

1. **Adding a new plugin**: Create a new file in `lua/plugins/` and ensure it's referenced in `lua/plugins/init.lua`
2. **Modifying keymaps**: Edit `lua/core/keymaps.lua` - leader key is Space
3. **Changing editor options**: Edit `lua/core/options.lua`
4. **Plugin versions**: Managed via `lazy-lock.json` - use `:Lazy` commands to update

### Key Implementation Details

- Auto-save is enabled on `FocusLost` and `BufHidden` events
- Clipboard is integrated with system clipboard
- The configuration uses vim.keymap.set for all key mappings
- Plugin configurations return tables compatible with lazy.nvim spec format