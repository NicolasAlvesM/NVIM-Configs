# Nicccls's Neovim Configuration

A customized Neovim setup with tmux integration for seamless project navigation.

## Installation

### Prerequisites

- **[Neovim](https://github.com/neovim/neovim)**
- **[ripgrep](https://github.com/BurntSushi/ripgrep)** – Used for efficient file searching.
- **[tmux](https://github.com/tmux/tmux)** – For managing terminal sessions.

### Setup Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/username/nvim-config.git
   ```

2. **Install the configuration**
   ```bash
   # Backup existing config (optional)
   [ -d ~/.config/nvim ] && mv ~/.config/nvim ~/.config/nvim.backup
   
   # Copy files to Neovim config location
   mkdir -p ~/.config/nvim
   cp -r nvim-config/* ~/.config/nvim/
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
   cp tmux-sessionizer ~/.local/scripts/
   
   # Make it executable
   chmod +x ~/.local/scripts/tmux-sessionizer
   ```

5. **Configure shell integration**
   
   Add to your `.zshrc`:
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

## Features

- Fast project navigation with tmux integration
- Project-wide search with ripgrep
- Customized Neovim experience with modern plugins

## Usage

- Press `Ctrl+f` in your shell to quickly navigate between projects
- Press `prefix+f` in tmux to open the project selector in a new window
- [Add other key features or keybindings]

## Customization

See comments in the configuration files for customization options.
