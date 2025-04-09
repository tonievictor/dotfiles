return {
	"nvimtools/none-ls.nvim",
	opts = function(_, config)
		local null_ls = require("null-ls")

		config = {
			sources = {
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.formatting.gofumpt,
				null_ls.builtins.formatting.asmfmt,
				null_ls.builtins.formatting.goimports_reviser,
			},
		}


		-- for everyother supported file
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { noremap = true, silent = true })
		return config
	end
}
