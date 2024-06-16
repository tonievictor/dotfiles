-- local autogroup = vim.api.nvim_create_augroup("LspFormatting", {})
return {
	"nvimtools/none-ls.nvim",
	opts = function(_, config)
		local null_ls = require("null-ls")
		local autogroup = vim.api.nvim_create_augroup("LspFormatting", {})

		config = {
			sources = {
				null_ls.builtins.completion.luasnip,
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.formatting.gofumpt,
				null_ls.builtins.formatting.goimports_reviser,
			},
			-- this is use to configure format on save
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({
						group = autogroup,
						buffer = bufnr
					})
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = autogroup,
						buffer = bufnr,
						callback = function ()
							vim.lsp.buf.format({ bufnr = bufnr })
						end
					})
				end
			end
		}
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
		return config
	end
}
