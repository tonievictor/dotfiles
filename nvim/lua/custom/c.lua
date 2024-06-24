local lspconfig = require("lspconfig")
local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.clangd.setup({
	-- on_attach = function(client, _)
	-- 	client.server_capabilities.signatureHelpProvider = false
	-- 	-- on_attach(client, bufnr)
	-- end,
	capabilities = capabilities
})
