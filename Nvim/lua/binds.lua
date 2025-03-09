vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Nvim Tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<leader>ee",":NvimTreeFocus<CR>", {noremap = true, silent = true})
