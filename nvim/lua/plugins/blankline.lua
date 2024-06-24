return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl", opts = {},
	config = function()
		require("ibl").setup({
			indent = {
				highlight = "IblIndent",
				smart_indent_cap = false,
				repeat_linebreak = false,
			},
			scope = {
				enabled = false,
				show_start = false
			},
			whitespace = {
				remove_blankline_trail = false,
			}
		})
	end
}
