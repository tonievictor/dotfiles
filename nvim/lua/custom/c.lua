local lspconfig = require("lspconfig")

lspconfig.clangd.setup({
	on_attach = function(client, _)
		client.server_capabilities.signatureHelpProvider = false
		-- on_attach(client, bufnr)
	end,
})
