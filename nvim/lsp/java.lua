return {
	cmd = { 'jdtls' },
	root_markers = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1]),
	single_file_support = true,
	filetypes = { 'java' },
}
