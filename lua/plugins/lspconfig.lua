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
		vim.keymap.set('n', 'K', vim.lsp.buf.hover, {desc = ""})
		vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {desc = "go to declaration"})
		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {desc = "go to definition"})
		vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {desc = "go to implementation"})
		vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, {desc = "code actions"})
	end
}
