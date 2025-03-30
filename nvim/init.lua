-- Lazy Vim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)


require("core.vim-opts")
require("core.mappings")
require("lazy").setup("plugins", {})
vim.lsp.config('*', { root_markers = { '.git' } })
vim.lsp.enable({ 'clangd', 'gopls', 'lua', 'zig', 'css', 'html', 'gleam', 'astro', 'python', 'java', 'rust' })
