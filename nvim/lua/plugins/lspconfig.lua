return {
	"neovim/nvim-lspconfig",
	dependencies = {
		-- "hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		require "custom.astro"
		-- require "custom.c"
		-- require "custom.rust"
		require "custom.css"
		require "custom.gleam"
		require "custom.go"
		require "custom.html"
		require "custom.lua"
		require "custom.python"
		require "custom.typescript"
		require "custom.zig"

		local signs = { Error = "", Warn = "", Hint = "", Info = "" }
		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
		end

		-- keymaps
		vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "" })
		vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = "go to declaration" })
		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "go to definition" })
		vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { desc = "go to implementation" })
		vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, { desc = "code actions" })
	end
}
