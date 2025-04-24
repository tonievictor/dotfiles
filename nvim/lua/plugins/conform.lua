return {
	'stevearc/conform.nvim',
	opts = {
		formatters_by_ft = {
			ocaml = { "ocamlformat" },
			c = { "clang_format" },
			golang = { "gofumpt", "goimports_reviser" },
		},

		formatters = {
			ocamlformat = {
				prepend_args = {
					"--if-then-else",
					"vertical",
					"--break-cases",
					"fit-or-vertical",
					"--type-decl",
					"sparse",
				},
			},
		},
	}
}
