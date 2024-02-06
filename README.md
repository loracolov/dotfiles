# Simple Neovim config

A simple Neovim config that includes a few essential plugins and *in*sane defaults. Audit before use.

## Plugins

- [lazy.nvim](https://github.com/folke/lazy.nvim): plugin manager
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim): color scheme
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim): fuzzy finder
- [telescope-file-browser.nvim](https://github.com/nvim-telescope/telescope-file-browser.nvim): file browser extension for telescope.nvim
- [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons): icons
- [undotree](https://github.com/mbbill/undotree): undo history visualizer
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter): syntax highlighting
- [plenary.nvim](https://github.com/nvim-lua/plenary.nvim): required lua function library

## Installation

- Make a backup of your current Neovim files:

```sh
# required
mv ~/.config/nvim{,.bak}

# optional
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

- Clone

```sh
git clone https://github.com/loracolov/dotfiles ~/.config/nvim
```

- Start Neovim

```sh
nvim
```
- Run `:checkhealth`

## File Structure

<pre>
~/.config/nvim
├── lua
│   ├── config
│   │   ├── init.lua
│   │   ├── keymaps.lua
│   │   ├── lazy.lua
│   │   └── options.lua
│   └── plugins
│       ├── colorscheme.lua
│       ├── telescope.lua
│       ├── treesitter.lua
│       └── undotree.lua
└── init.lua
</pre>
