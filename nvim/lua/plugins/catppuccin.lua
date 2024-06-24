return {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 150,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			no_italic = true,
			no_bold = true,
			integrations = {
				telescope = {
					enabled = true,
					style = "nvchad"
				},
			}
		})
		-- Ffggjj ehb
		vim.cmd.colorscheme "catppuccin"
	end
}
