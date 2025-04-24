return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = {
				"c",
				"lua",
				"go",
				"javascript",
				"typescript",
				"gleam",
				"rust",
				"zig",
				"css",
			},
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
			autopairs = {
				enable = true,
				filetypes = { "html", "xml", "php", "vue" },
			},
			indent = { enable = true },
		})
	end
}
