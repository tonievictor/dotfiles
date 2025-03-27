return {
	cmd = { 'clangd', '--background-index' },
	root_markers = { 'compile_commands.json', 'compile_flags.txt' },
	single_file_support = true,
	capabilities = {
		offsetEncoding = { "utf-8", "utf-16" },
	},
	filetypes = { 'c', 'cpp' },
}
