local lspconfig = require("lspconfig")
local util = require "lspconfig/util"
local capabilities = vim.lsp.protocol.make_client_capabilities()

lspconfig.gopls.setup ({
  cmd = {"gopls"},
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
	capabilities = capabilities,
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true
      }
    }
  }
})


