# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

A personal Neovim configuration built on the [LazyVim](https://www.lazyvim.org/) distribution, using [lazy.nvim](https://github.com/folke/lazy.nvim) for plugin management.

## Architecture

```
init.lua              # Entry point — loads core modules in order
lua/
  core/
    options.lua       # vim.opt settings + global ConfigMode variable
    keymaps.lua       # All keybindings via a local map() wrapper
    lazy.lua          # lazy.nvim bootstrap + plugin spec assembly
  plugins/            # Each file returns a lazy.nvim plugin spec table
    colorscheme.lua   # olive-crt theme
    lualine.lua       # statusline
    neo-tree.lua      # file explorer
    treesitter.lua    # syntax parsing + installed parsers
lazy-lock.json        # Pinned plugin versions (commit hash per plugin)
lazyvim.json          # LazyVim distro metadata (version, enabled extras)
```

**Plugin loading order:** `core.options` → `core.keymaps` → `core.lazy` (which loads LazyVim defaults first, then everything in `lua/plugins/`).

**Adding a plugin:** create a new file under `lua/plugins/` returning a lazy.nvim spec table. It is auto-imported via `{ import = "plugins" }` in `lazy.lua`.

**ConfigMode global:** `options.lua` sets `ConfigMode = "rich"` (full NerdFont/truecolor) or `"simple"` (8-color TTY). Plugin files can branch on this to conditionally load icons or fancy UI elements.

## Key Dependencies

- **lazy.nvim** — plugin manager (auto-installs on first run)
- **LazyVim** — base distro providing LSP, completion, formatting, etc. via `lazyvim.plugins`
- **tree-sitter CLI** — required for building parsers; install from https://github.com/tree-sitter/tree-sitter/releases
- **lazygit** — `brew install lazygit`

## Keybindings (defined in keymaps.lua)

| Key | Action |
|-----|--------|
| `<leader>` | Space |
| `<leader>w` | Save file |
| `<leader>gg` | Open LazyGit |
| `<C-t>` | Focus Neo-tree |
| `<C-c>` | Close Neo-tree |
| `<C-h/j/k/l>` | Navigate splits |
| `]b` / `[b` | Next/previous buffer |
| `<Esc>` (normal) | Clear search highlight |

## Plugin Management Commands (inside Neovim)

- `:Lazy` — open plugin manager UI
- `:Lazy sync` — update all plugins and write `lazy-lock.json`
- `:Lazy restore` — revert to versions in `lazy-lock.json`
- `:TSUpdate` — update treesitter parsers
- `:LazyExtras` — manage LazyVim optional extras
