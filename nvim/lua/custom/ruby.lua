local lspconfig = require("lspconfig")
local util = require("lspconfig.util")

lspconfig.ruby_lsp.setup({
	cmd = { "ruby-lsp" },
	filetypes = { "ruby", "eruby" },
	root_dir = util.root_pattern('Gemfile', '.git'),
	single_file_support = true,
	init_options = {
		formatter = 'standard',
		linters = { 'standard' },
	},
})
