return {
	"nvim-lualine/lualine.nvim",
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		require('lualine').setup({
			options = {
				component_separators = '',
				theme = 'auto',
				section_separators = { left = '', right = '' },
			},
			sections = {
				lualine_a = { { 'mode', right_padding = 2 } },
				lualine_b = { 'filename', 'branch' },
				lualine_c = {
					'%=', --[[ add your center compoentnts here in place of this comment ]]
				},
				lualine_x = {},
				lualine_y = { 'filetype', 'progress' },
				lualine_z = {
					{ 'location', left_padding = 2 },
				},
			},
		})
	end
}
