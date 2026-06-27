# How To`s

https://habr.com/ru/articles/986638/

`init.lua` - Neovim читает этот файл автоматически при запуске и он является точкой входа

`lua/` - Директория, из которой Neovim может импортировать модули

`core/` - Директория с основными настройками редактора (опции, горячие клавиши, цветовая схема и т.п.)

## Install tree-sitter cli
https://github.com/tree-sitter/tree-sitter/releases/tag/v0.26.8

## Install lazygit
`brew install lazygit`

## Buffers

| Key | Action |
|-----|--------|
| `]b` / `[b` | Next / previous buffer |
| `<leader>bd` | Close current buffer (LazyVim default) |

## Neo-tree: creating files

Focus the tree with `<C-t>`, then:

| Key | Action |
|-----|--------|
| `a` | Create new file (type name, Enter to confirm) |
| `A` | Create new directory |
| `d` | Delete selected file/directory |
| `r` | Rename selected file/directory |


