local lspconfig = require("lspconfig")
local util = require "lspconfig/util"

lspconfig.clangd.setup({
	cmd = { "clangd" },
	filetypes = { "c", "cpp" },
	single_file_support = true,
	capabilities = {
		offsetEncoding = { "utf-8", "utf-16" },
	},
})
