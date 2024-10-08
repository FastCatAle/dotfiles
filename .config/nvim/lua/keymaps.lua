--- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

--- Tabs
vim.keymap.set("n", "<leader>p", vim.cmd.Ex)
vim.keymap.set("n", "<leader>tn", vim.cmd.tabnew)
vim.keymap.set("n", "<leader>tc", vim.cmd.tabclose)
