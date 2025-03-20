# Nicccls's Neovim Configuration

This repository contains my personal Neovim configuration. It’s designed to boost your productivity with a streamlined setup that integrates Neovim, tmux, and additional utilities.

## Prerequisites

Before you begin, make sure you have the following installed:

- **[Neovim](https://github.com/neovim/neovim)**
- **[ripgrep](https://github.com/BurntSushi/ripgrep)** – Used for efficient file searching.
- **[tmux](https://github.com/tmux/tmux)** – For managing terminal sessions.

## Installation

Follow these steps to set up the configuration on your machine:

### 1. Update Project Paths

- **Edit `init.lua`:**  
  Open `init.lua` and modify the find paths on **line 6** to match the location of your projects folder. This ensures that your file search targets the correct directories.

### 2. Install `tmux-sessionizer`

- **Move the Script:**  
  Place the `tmux-sessionizer` file into your local scripts directory:

  ```bash
  mv tmux-sessionizer ~/.local/scripts/tmux-sessionizer
