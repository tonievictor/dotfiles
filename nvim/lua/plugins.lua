local plugins = {
	{
		"wakatime/vim-wakatime",
		lazy = false
	},
	{
		"rust-lang/rust.vim",
		ft = "rust",
		init = function()
			vim.g.rustfmt_autosave = 1
		end
	},
	{
		"Mohammed-Taher/AdvancedNewFile.nvim",
	}
}

return plugins
