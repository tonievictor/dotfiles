local lspconfig = require("lspconfig")
local util = require "lspconfig/util"

lspconfig.gleam.setup ({
	cmd = { "gleam", "lsp" },
  filetypes = { "gleam" },
  root_dir = util.root_pattern("gleam.toml", ".git")
})
