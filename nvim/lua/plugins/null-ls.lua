return {
	"nvimtools/none-ls.nvim",
	opts = function(_, config)
		local null_ls = require("null-ls")

		config = {
			sources = {
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.formatting.gofumpt,
				null_ls.builtins.formatting.goimports_reviser,
			},
		}
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
		return config
	end
}
