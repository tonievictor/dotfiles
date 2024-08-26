local lspconfig = require("lspconfig")
local util = require('lspconfig.util')

local function organize_imports()
  local params = {
    command = 'pyright.organizeimports',
    arguments = { vim.uri_from_bufnr(0) },
  }

  local clients = util.get_lsp_clients {
    bufnr = vim.api.nvim_get_current_buf(),
    name = 'pyright',
  }
  for _, client in ipairs(clients) do
    client.request('workspace/executeCommand', params, nil, 0)
  end
end

lspconfig.pyright.setup({
	cmd = { 'pyright-langserver', '--stdio' },
	settings = {
		python = {
			analysis = {
				autoSearchPaths = true,
				useLibraryCodeForTypes = true,
				diagnosticMode = 'openFilesOnly',
			},
		},
	},
	PyrightOrganizeImports = {
      organize_imports,
      description = 'Organize Imports',
    },
	filetypes = { "python" },
})
