local lspconfig = require("lspconfig")
local util = require("lspconfig.util")

lspconfig.zls.setup({
	cmd = { 'zls' },
	filetypes = { 'zig', 'zir' },
	root_dir = util.root_pattern('zls.json', 'build.zig', '.git'),
	single_file_support = true,
})
