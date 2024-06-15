return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl", opts = {},
	config = function()
		require("ibl").setup({
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
