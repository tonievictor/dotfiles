local lspconfig = require("lspconfig")

lspconfig.ts_ls.setup ({
	init_options = {
		preferences = {
			disableSuggestions = true,
		}
	}
})
