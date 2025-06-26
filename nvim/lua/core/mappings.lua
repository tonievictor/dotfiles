vim.keymap.set('x', "p", "\"_dP")

-- disable arrow keys in normal mode
vim.keymap.set("n", "<Up>", "<Nop>", { noremap = true })
vim.keymap.set("n", "<Down>", "<Nop>", { noremap = true })
vim.keymap.set("n", "<Left>", "<Nop>", { noremap = true })
vim.keymap.set("n", "<Right>", "<Nop>", { noremap = true })

-- disable arrow keys in insert mode
vim.keymap.set("i", "<Up>", "<Nop>", { noremap = true })
vim.keymap.set("i", "<Down>", "<Nop>", { noremap = true })
vim.keymap.set("i", "<Left>", "<Nop>", { noremap = true })
vim.keymap.set("i", "<Right>", "<Nop>", { noremap = true })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true })

-- step through the results in quick fix M -> alt
vim.keymap.set("n", "<M-j>", "<cmd>cnext<CR>", {})
vim.keymap.set("n", "<M-k>", "<cmd>cprev<CR>", {})

vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>", {})

-- lsp specific keymaps
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "hover" })
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = "go to declaration" })
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "go to definition" })

--
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

--
vim.keymap.set("n", "<leader>gf", function()
	require("conform").format({ async = true, lsp_fallback = true })
end, { noremap = true, silent = true })

-- Open todo file
vim.keymap.set("n", "<leader>td", "<cmd>e ~/.todo.md<CR>", {})

-- Toggle vim diagnostic text
vim.keymap.set("n", "<leader>dt", function()
	local new = not vim.diagnostic.config().virtual_text
	vim.diagnostic.config({
		virtual_text = new
	})
end, { desc = "toggle virtual text" })
