local lspconfig = require("lspconfig")
local util = require("lspconfig.util")

lspconfig.rubocop.setup({
	cmd = { 'rubocop', '--lsp' },
	filetypes = { 'ruby' },
	root_dir = util.root_pattern('Gemfile', '.git'),
})
