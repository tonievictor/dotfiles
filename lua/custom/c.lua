local lspconfig = require("lspconfig")

lspconfig.clangd.setup ({
  on_attach = function (client)
    client.server_capabilities.signatureHelpProvider = false
  end,
})
