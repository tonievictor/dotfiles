return {
	"neovim/nvim-lspconfig",
	config = function()
		require "custom.astro"
		require "custom.c"
		require "custom.css"
		require "custom.gleam"
		require "custom.go"
		require "custom.html"
		require "custom.lua"
		require "custom.python"
		require "custom.typescript"
		vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
		vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
		vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
		vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, {})
	end
}
