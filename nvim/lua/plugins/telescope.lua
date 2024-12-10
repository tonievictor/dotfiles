return {
	{
		'nvim-telescope/telescope.nvim',
		branch = '0.1.x',
		dependencies = {
			'nvim-lua/plenary.nvim',
			{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
		},
		config = function()
			local telescope = require("telescope")
			local actions = require("telescope.actions")
			telescope.load_extension('fzf')


			telescope.setup({
				defaults = {
					file_ignore_patterns = { "node_modules" },
					path_display = { "truncate" },
					prompt_prefix = "   ",
					initial_mode = "insert",
					dynamic_preview_title = true,
					selection_strategy = "reset",
					sorting_strategy = "ascending",
					layout_strategy = "vertical",
					results_title = false,
					style = "borderless",
					layout_config = {
						vertical = {
							preview_height = 0.73,
							prompt_position = "top",
							mirror = false,
						},
						width = 0.6,
						height = 0.8,
						preview_cutoff = 1,
					},
					set_env = { ["COLORTERM"] = "truecolor" },
					mappings = {
						i = {
							["<C-k>"] = actions.move_selection_previous,
							["<C-j>"] = actions.move_selection_next,
						},
						n = {
							["q"] = actions.close,
						}
					},
					winblend = 0,
					border = true,
					borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
					extensions_list = { "themes", "terms" },
				},
				pickers = {
					find_files = {
						layout_config = {
							vertical = {
								-- preview_height = 0.75,
								preview_cutoff = 120,
							}
						}
					}
				},
			})
			local builtin = require("telescope.builtin")
			vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "find files" })
			vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "grep a sring" })
			vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "find a buffer" })
			vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "help tags" })
			vim.keymap.set('n', '<leader>fz', builtin.current_buffer_fuzzy_find, { desc = "grep in current buffer" })
			vim.keymap.set('n', '<leader>fs', builtin.grep_string, { desc = "find a word" })
			vim.keymap.set("n", "<space>en", function()
				builtin.find_files {
					cwd = vim.fn.stdpath("config")
				}
			end, {desc= "find files in config"})
		end
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown {}
					}
				}
			})
			require("telescope").load_extension("ui-select")
		end
	}
}
