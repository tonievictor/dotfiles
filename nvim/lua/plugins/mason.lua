return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({})
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"asm_lsp",
					"astro",
					"cssls",
					"cssmodules_ls",
					"gopls",
					"html",
					"lua_ls",
					"pyright",
					"ts_ls",
					"zls",
				}
			})
		end
	}
}
