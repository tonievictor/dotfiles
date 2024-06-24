local lspconfig = require("lspconfig")
local util = require "lspconfig/util"
local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.gleam.setup ({
	cmd = { "gleam", "lsp" },
	-- cmd = { "glas", "--stdio" },
  filetypes = { "gleam" },
	capabilities = capabilities,
  root_dir = util.root_pattern("gleam.toml", ".git")
})
