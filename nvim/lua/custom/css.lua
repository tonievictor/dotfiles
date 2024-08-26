local lspconfig = require("lspconfig")
local util = require("lspconfig.util")

lspconfig.cssls.setup({
	cmd = { 'vscode-css-language-server', '--stdio' },
	filetypes = { 'css', 'scss', 'less' },
	init_options = { provideFormatter = true },   -- needed to enable formatting capabilities
	root_dir = util.root_pattern('package.json', '.git'),
	single_file_support = true,
	settings = {
		css = { validate = true },
		scss = { validate = true },
		less = { validate = true },
	},
})
