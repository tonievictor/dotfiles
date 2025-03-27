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
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { desc = "go to implementation" })
vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = "go to references" })
vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, { desc = "code actions" })
