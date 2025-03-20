# Nicccls's Neovim Configuration

A powerful and feature-rich Neovim setup with a focus on development productivity, debugging, and seamless tmux integration.

## Prerequisites

- **[Neovim](https://github.com/neovim/neovim)**
- **[ripgrep](https://github.com/BurntSushi/ripgrep)** – Used for efficient file searching.
- **[tmux](https://github.com/tmux/tmux)** – For managing terminal sessions.
- A Nerd Font for proper icon display (optional but recommended)
- Git for plugin management

## Installation

1. **Back up your existing Neovim configuration (if necessary)**
   ```bash
   [ -d ~/.config/nvim ] && mv ~/.config/nvim ~/.config/nvim.backup
   ```

2. **Clone this repository to your Neovim config directory**
   ```bash
   git clone https://github.com/Nicccls/nvim-config.git ~/.config/nvim
   ```

3. **Configure project search paths**
   
   Edit line 27 in `tmux-sessionizer` to set your project directories:
   ```lua
   -- Change these paths to your project folders
   selected=$(find ~/projetos -mindepth 1 -maxdepth 1 -type d | fzf)
   ```

4. **Set up tmux-sessionizer**
   ```bash
   # Create scripts directory if needed
   mkdir -p ~/.local/scripts
   
   # Copy the script
   cp ~/.config/nvim/utils/tmux-sessionizer ~/.local/scripts/
   
   # Make it executable
   chmod +x ~/.local/scripts/tmux-sessionizer
   ```

5. **Configure shell integration**
   
   Add to your `.zshrc` (or equivalent shell config):
   ```bash
   # Add local scripts to PATH
   export PATH="$HOME/.local/scripts:$PATH"
   
   # Bind Ctrl+f to launch tmux-sessionizer
   bindkey -s ^f "tmux-sessionizer\n"
   ```

6. **Configure tmux integration**
   
   Add to your `.tmux.conf`:
   ```bash
   # Bind prefix+f to launch tmux-sessionizer
   bind-key -r f run-shell "tmux neww ~/.local/scripts/tmux-sessionizer"
   ```

7. **Start Neovim**
   
   The plugins will be automatically installed on the first launch.

## Features

### Plugin Management
- [lazy.nvim](https://github.com/folke/lazy.nvim) for plugin management

### Editor Enhancements
- Multiple color schemes including rose-pine-moon, tokyonight, and gruvbox
- Zen mode for distraction-free editing
- Undotree for better undo history visualization
- Visual-multi for multiple cursors
- Custom statusline

### Navigation and Search
- [Telescope](https://github.com/nvim-telescope/telescope.nvim) for fuzzy finding
- [Harpoon](https://github.com/ThePrimeagen/harpoon) for quick file navigation
- Easy buffer navigation with custom keymaps

### Development Tools
- [LSP](https://github.com/neovim/nvim-lspconfig) support with auto-setup
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) for better syntax highlighting
- [Mason](https://github.com/williamboman/mason.nvim) for LSP/DAP/linter management
- [nvim-dap](https://github.com/mfussenegger/nvim-dap) for debugging
- [neotest](https://github.com/nvim-neotest/neotest) for testing
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip) for snippets
- Git integration with [fugitive](https://github.com/tpope/vim-fugitive)
- [Copilot](https://github.com/zbirenbaum/copilot.lua) integration

### Language Support
- Go
- Lua
- Zig
- JavaScript/TypeScript
- HTML/CSS with Templ support
- And more...

## Key Mappings

Space is used as the leader key. Some notable keymaps include:

### General
- `<leader>pv` - Open file explorer (netrw)
- `<leader>u` - Toggle Undotree
- `<leader>gs` - Open Git status (fugitive)
- `<M-Up/Down>` - Move lines up/down
- `<C-c>` - Copy to system clipboard
- `<leader>tt` - Toggle Trouble (diagnostics)
- `<leader>zz` - Toggle Zen mode

### Telescope
- `<leader>pf` - Find files
- `<C-p>` - Git files
- `<C-f>` - Find in current buffer
- `<leader>ps` - Grep search

### LSP
- `K` - Hover documentation
- `<leader>o` - Go to definition
- `<leader>vd` - Show diagnostics
- `<leader>vca` - Code action
- `<leader>vrr` - Show references
- `<leader>rnm` - Rename
- `<leader>ne/pe` - Next/previous error

### Harpoon
- `<leader>a` - Add file to harpoon
- `<C-m>` - Toggle quick menu
- `<C-h/e/n/s>` - Jump to marked files

### Debugging
- `<leader>dr` - Toggle debug REPL
- `<leader>ds` - Toggle debug stacks
- `<leader>db` - Toggle debug breakpoints
- `<leader>tr` - Run nearest test
- `<leader>ts` - Run test suite

### Go-specific
- `<leader>ee` - Insert error check snippet
- `<leader>ea` - Insert error assert snippet
- `<leader>ef` - Insert error fatal snippet

## Customization

Most of the configuration is split into separate files under the `lua/nicccls/lazy/` directory, making it easy to modify specific parts:

- Color schemes in `colors.lua`
- LSP configuration in `lsp.lua`
- Key mappings in `remap.lua`
- Editor settings in `set.lua`
