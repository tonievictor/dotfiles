return {
	-- "catppuccin/nvim",
	-- lazy = false,
	-- name = "catppuccin",
	-- priority = 150,
	-- config = function()
	-- 	require("catppuccin").setup({
	-- 		-- flavour = "mocha",
	-- 		no_italic = true,
	-- 		no_bold = true,
	-- 		integrations = {
	-- 			telescope = {
	-- 				enabled = true,
	-- 				style = "nvchad"
	-- 			},
	-- 			treesitter = {enabled = true, style = "nvchad"},
	-- 			indent_blankline = { enabled = true },
	-- 			treesitter_context = true,
	-- 	})
	-- 	vim.cmd.colorscheme "catppuccin"
	-- end
	"shaunsingh/nord.nvim",
	lazy = false,
	name = "nord",
	priority = 150,
	config = function()
		vim.g.nord_contrast = false
		vim.g.nord_borders = false
		vim.g.nord_disable_background = false
		vim.g.nord_italic = false
		vim.g.nord_uniform_diff_background = false
		vim.g.nord_bold = false
		vim.cmd.colorscheme "nord"
	end
}
