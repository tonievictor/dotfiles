vim.keymap.set('n', '<leader>n', '<cmd> set nu! <CR>', {})
vim.keymap.set('x', "p", "\"_dP")


vim.keymap.set("n", "<Up>", "<Nop>", { noremap = true })
vim.keymap.set("n", "<Down>", "<Nop>", { noremap = true })
vim.keymap.set("n", "<Left>", "<Nop>", { noremap = true })
vim.keymap.set("n", "<Right>", "<Nop>", { noremap = true })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true })

vim.keymap.set("n", "<M-j>", "<cmd>cnext<CR>", {})
vim.keymap.set("n", "<M-k>", "<cmd>cprev<CR>", {})

vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>", {})
