local lspconfig = require("lspconfig")
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local util = require("lspconfig.util")

lspconfig.html.setup ({
cmd = { 'vscode-html-language-server', '--stdio' },
    filetypes = { 'html', 'templ' },
    root_dir = util.root_pattern('package.json', '.git'),
    single_file_support = true,
    settings = {},
    init_options = {
      provideFormatter = true,
      embeddedLanguages = { css = true, javascript = true },
      configurationSection = { 'html', 'css', 'javascript' },
    },	capabilities = capabilities,
})
