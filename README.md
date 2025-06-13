# Neovim Configuration

My personal Neovim configuration built with Lua and managed by [lazy.nvim](https://github.com/folke/lazy.nvim).

## Features

- 🚀 Fast startup with lazy-loaded plugins
- 📁 Modern file explorer with [oil.nvim](https://github.com/stevearc/oil.nvim)
- 🔍 Fuzzy finding with [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- 🌲 File tree sidebar with [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- ✨ Syntax highlighting with [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- 🎨 Beautiful UI with custom statusline and tabline
- 📋 Enhanced clipboard operations with [yanky.nvim](https://github.com/gbprod/yanky.nvim)
- 🔄 Git integration with [gitsigns](https://github.com/lewis6991/gitsigns.nvim)
- 💡 LSP support with [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- 🎯 Auto-completion with [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- 🎪 Smooth scrolling animations
- 💾 Auto-save functionality

## Structure

```
~/.config/nvim/
├── init.lua                 # Entry point
├── lua/
│   ├── core/               # Core configuration
│   │   ├── keymaps.lua     # Key mappings
│   │   ├── options.lua     # Editor options
│   │   ├── autocmds.lua    # Auto commands
│   │   └── colorscheme.lua # Theme configuration
│   └── plugins/            # Plugin configurations
│       ├── init.lua        # Plugin registry
│       └── ...             # Individual plugin configs
├── lazy-lock.json          # Plugin version lock file
├── CLAUDE.md              # AI assistant guidelines
└── README.md              # This file
```

## Key Mappings

Leader key: `<Space>`

### General
- `<leader>w` - Save file
- `<leader>q` - Quit
- `<leader>wq` - Save and quit
- `<leader>qa` - Close all tabs
- `<leader>-` - Open oil file explorer

### Navigation
- `<leader>ff` - Find files
- `<leader>fg` - Live grep
- `<leader>fb` - Browse buffers
- `<leader>e` - Toggle file tree

### Git
- `<leader>gs` - Git status
- `<leader>gb` - Git blame
- `<leader>gd` - Git diff

### Code
- `<leader>ca` - Code actions
- `<leader>rn` - Rename
- `gd` - Go to definition
- `gr` - Go to references

## Requirements

- Neovim >= 0.9.0
- Git
- A [Nerd Font](https://www.nerdfonts.com/) (for icons)
- ripgrep (for telescope grep)
- fd (optional, for better file finding)

## Installation

1. Back up your existing Neovim configuration:
   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak
   ```

2. Clone this repository:
   ```bash
   git clone https://github.com/JaredVogt/nvim.git ~/.config/nvim
   ```

3. Start Neovim:
   ```bash
   nvim
   ```

   Lazy.nvim will automatically install on first launch and download all plugins.

## Customization

- **Add plugins**: Create a new file in `lua/plugins/` and add it to `lua/plugins/init.lua`
- **Modify keymaps**: Edit `lua/core/keymaps.lua`
- **Change options**: Edit `lua/core/options.lua`
- **Update theme**: Edit `lua/core/colorscheme.lua`

## Plugin Management

- `:Lazy` - Open lazy.nvim interface
- `:Lazy update` - Update plugins
- `:Lazy sync` - Sync plugins with lock file
- `:Lazy clean` - Remove unused plugins

## License

This configuration is provided as-is for personal use.