local lspconfig = require("lspconfig")
local util = require "lspconfig/util"

lspconfig.gleam.setup ({
	cmd = { "gleam", "lsp" },
	-- cmd = { "glas", "--stdio" },
  filetypes = { "gleam" },
  root_dir = util.root_pattern("gleam.toml", ".git")
})
