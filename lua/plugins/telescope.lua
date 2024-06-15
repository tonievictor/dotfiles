return {
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		dependencies = { 'nvim-lua/plenary.nvim'},
		config = function()
			local telescope = require("telescope")
			local actions = require("telescope.actions")

			telescope.setup({
				defaults = {
					path_display = { "truncate" },
					prompt_prefix = "   ",
					initial_mode = "insert",
					dynamic_preview_title = true,
					selection_strategy = "reset",
					sorting_strategy = "ascending",
					layout_strategy = "vertical",
					results_title = false,
					layout_config = {
						horizontal = {
							prompt_position = "top",
							preview_height = 0.7,
							preview_width = 0.6,
							results_width = 0.8,
						},
						vertical = {
							preview_height = 0.7,
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
							["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist
						},
						n = {
							["q"] = actions.close
						}
					},
					winblend = 0,
					border = true,
					borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
					extensions_list = { "themes", "terms" },
				},
				pickers = {
					live_grep = {
						layout_config = {
							vertical = {
								preview_height = 0.75,
							}
						}
					}
				},
				file_ignore_patterns = { "node_modules" },
			})

			local builtin = require("telescope.builtin")
			vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
			vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
			vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
			vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
			vim.keymap.set('n', '<leader>fz', builtin.current_buffer_fuzzy_find, {})
			vim.keymap.set('n', '<leader>fs', builtin.grep_string, {})
		end
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config =  function()
			require("telescope").setup ({
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
