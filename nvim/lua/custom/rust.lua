local util = require "lspconfig/util"
local lspconfig = require("lspconfig")

lspconfig.rust_analyzer.setup({
	cmd = { 'rust-analyzer' },
	filetypes = { 'rust' },
	single_file_support = true,
	root_dir = util.root_pattern("Cargo.toml"),
})
