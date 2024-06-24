return {
	{
		"williamboman/mason.nvim",
		config =  function()
			require("mason").setup({})
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"zls",
					"lua_ls",
					"gopls",
					"clangd",
					"rust_analyzer",
					"pyright",
					"tsserver",
					"sqlls",
					"dockerls",
					"astro",
					"cssls",
					"html",
					"cssmodules_ls",
				}
			})
		end
	}
}
