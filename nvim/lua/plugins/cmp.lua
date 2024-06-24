return {
	{
		"L3MON4D3/LuaSnip",
		dependencies = { "rafamadriz/friendly-snippets" },
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"onsails/lspkind.nvim",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-nvim-lua",
			"saadparwaiz1/cmp_luasnip",
		},
		config = function()
			local cmp = require("cmp")
			local lspkind = require('lspkind')
			require("luasnip.loaders.from_vscode").lazy_load()
			cmp.setup({
				snippet = {
					expand = function(args)
						-- vim.snippet.expand(args.body)
						require('luasnip').lsp_expand(args.body)
					end
				},
				window = {
					completion = {
						winhighlight = 'Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None',
						scrollbar = false,
					},
					documentation = {
						winhighlight = "Normal:CmpDoc",
					}
				},
				mapping = cmp.mapping.preset.insert({
					["<C-n>"] = cmp.mapping.select_next_item(),
					["<C-p>"] = cmp.mapping.select_prev_item(),
					["<C-d>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.close(),
					["<C-y>"] = cmp.mapping.confirm {
						behavior = cmp.ConfirmBehavior.Insert,
						select = true,
					},
				}),
				formatting = {
					format = lspkind.cmp_format({
						mode = 'symbol',
						maxwidth = 50,
						ellipsis_char = '...',
						show_labelDetails = true,
					})
				},
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip"},
					{ name = "buffer", keyword=5 },
					{ name = "nvim_lua" },
					{ name = "path" }
				}),
			})
		end
	}
}
