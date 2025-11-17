# Simple Nvim Configuration

A simple neovim configuration that does as many things naively within neovim as possible.

Plugins that are used are related to syntax highlighting and LSP configuration. The after directory is used to apply any keybindings related to plugins

### Getting started

Simple clone this repository where your neovim configuration would live
Either in `$HOME/.nvim` or `$CONFIG_HOME/nvim`

Then open neovim, Lazy will bootstrap and pull all plugins

### Plugins

This configuration primarily features plugins to help with navigation and LSP configuration

- Catppuccin: Theme
- inlay-hints: function hints
- mason: manager LSP servers
- lspconfig: quick enable LSP servers
- nvim-cmp: completion for LSP
- vim-test: run tests
- vim-tmux-navigator: integration with tmux
- treesitter: better code highlighting
- telescope: navigation and other
- jdtls.nvim: For better java LSP options

### Config

Auto command, Keymaps, options, status bar, tabs, and terminal are all configured naively in Lua 
