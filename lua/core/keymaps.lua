-- vim modes: mode - режим (n = normal, v = visual, i = insert, t = terminal, x = visual_block, c = command_mode)

local function map(mode, lhs, rhs, desc_or_opts)
	local opts = {}

	if type(desc_or_opts) == "string" then
		opts = { desc = desc_or_opts }
	elseif type(desc_or_opts) == "table" then
		opts = desc_or_opts
	end
	opts.silent = opts.silent ~= false

	vim.keymap.set(mode, lhs, rhs, opts)
end

-- Space bar as "leader" key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- После поиска (/something) Neovim подсвечивает все совпадения. Нажатие Esc уберёт эту подсветку.
map("n", "<Esc>", ":noh<CR>", "Clear Highlight")

-- ]b - buffer next, [b - buffer previous
map("n", "]b", ":bnext<CR>", "Next Buffer")
map("n", "[b", ":bprevious<CR>", "Previous Buffer")

-- Навигация после window split :split или :vsplit, Ctrl+w (стандартно, а так просто ctrl+h, ctrl+j ...)
map("n", "<C-h>", "<C-w>h", "Move left")
map("n", "<C-j>", "<C-w>j", "Move down")
map("n", "<C-k>", "<C-w>k", "Move up")
map("n", "<C-l>", "<C-w>l", "Move right")

-- Save file
map("n", "<leader>w", ":w<CR>", "Save file")

-- Neo-Tree
map("n", "<C-t>", ":Neotree focus<CR>", "File Tree focus")
map("n", "<C-c>", ":Neotree close<CR>", "File Tree close")

-- LazyGit
map("n", "<leader>gg", ":LazyGit<CR>", "OpenLazyGit")
