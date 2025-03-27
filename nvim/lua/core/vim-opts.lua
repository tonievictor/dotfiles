-- Indentation
vim.opt.expandtab = false
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.smartindent = true

vim.opt.cursorline = true
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.rustfmt_fail_silently = 1

-- sync editor clipboard and machine's
vim.o.clipboard = "unnamedplus"

-- Disable mouse
vim.o.mouse = ""

-- Save undo history
vim.o.undofile = true

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

-- Set terminal gui colors to true
vim.o.termguicolors = true

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true
vim.opt.relativenumber = true

-- Backups and swap stuff
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.shortmess:append "sI"
vim.opt.textwidth = 80

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.diagnostic.config({
	virtual_text = false,
	virtual_lines = false,
	virtual_text = { current_line = true },
	signs = false,
	underline = false,
})
