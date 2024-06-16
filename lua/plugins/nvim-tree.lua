return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	cmd = { "NvimTreeToggle", "NvimTreeFocus" },
	config = function()
		require("nvim-tree").setup({
			renderer = {
				root_folder_label = false,
				group_empty = true,
			},
			filters = {
				-- to hide specific files/folders
				custom = {
					'.git'
				}
			},
			git = {
				enable = false,
			}
		})
		vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<Cr>', {
			noremap = true, silent = true,
			desc = "toggle the file explorer"
		})
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
		vim.opt.termguicolors = true
	end,
}
