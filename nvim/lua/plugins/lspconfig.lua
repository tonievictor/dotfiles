return {
	"neovim/nvim-lspconfig",
	config = function()
		require "custom.astro"
		require "custom.css"
		require "custom.gleam"
		require "custom.go"
		require "custom.html"
		require "custom.lua"
		require "custom.python"
		require "custom.typescript"
		require "custom.zig"
		require "custom.c"

		vim.diagnostic.config({
			virtual_text = false,
			-- virtual_lines = false,
			signs = false,
			underline = false,
		})

		-- keymaps
		vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "hover" })
		vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = "go to declaration" })
		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "go to definition" })
		vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { desc = "go to implementation" })
		vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = "go to references" })
		vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, { desc = "code actions" })
	end
}
