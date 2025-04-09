local plugins = {
	{
		"wakatime/vim-wakatime",
		lazy = false
	},
	{
		'windwp/nvim-ts-autotag',
		event = "InsertEnter",
		opts = {
			enable_close = true,       -- Auto close tags
			enable_rename = true,      -- Auto rename pairs of tags
			enable_close_on_slash = false -- Auto close on trailing </
		},
		per_filetype = {
			["html"] = {
				enable_close = false
			}
		}
	},
	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		opts = {
			fast_wrap = {
				map = '<M-e>',
				chars = { '{', '[', '(', '"', "'", '<' },
				pattern = [=[[%'%"%>%]%)%}%,]]=],
				end_key = '$',
				before_key = 'h',
				after_key = 'l',
				cursor_pos_before = true,
				keys = 'qwertyuiopzxcvbnmasdfghjkl',
				manual_position = true,
				highlight = 'Search',
				highlight_grey = 'Comment'
			},
		}
		-- use opts = {} for passing setup options
		-- this is equivalent to setup({}) function
	},
	{
		'mrcjkb/rustaceanvim',
		version = '^6', -- Recommended
		lazy = false, -- This plugin is already lazy
	}
}

return plugins
