-- set leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local keymap = vim.keymap


keymap.set("n", "<leader>pv", ":NvimTreeToggle<CR>")

keymap.set("n", "<leader>hc", ":nohl<CR>")


-- window rebinds
--
keymap.set("n", "<leader>sv", "<C-w>v")    -- split vertical
keymap.set("n", "<leader>sh", "<C-w>s")    -- split horizontal
keymap.set("n", "<leader>se", "<C-w>=")    -- make splits even
keymap.set("n", "<leader>sx", ":close<CR>") -- close window

keymap.set("n", "<leader>to", ":tabnew<CR>")
keymap.set("n", "<leader>tx", ":tabclose<CR>")
keymap.set("n", "<leader>tn", ":tabn<CR>")
keymap.set("n", "<leader>tp", ":tabp<CR>")
