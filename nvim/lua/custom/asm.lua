local lspconfig = require("lspconfig")

lspconfig.asm_lsp.setup({
	cmd = { "asm-lsp" },
	filetypes = { "asm", "wasm" }
})
