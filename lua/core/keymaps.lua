vim.g.mapleader = " "

local keymap = vim.keymap

-- --------- insert mode ---------
keymap.set("i", "jk", "<ESC>")

-- --------- visual mode ---------
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- --------- normal mode ---------
-- windows
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")

-- cancel highlight
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- --------- plugins ---------
-- nvim-tre
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- bufferline
keymap.set("n", "<C-l>", ":bnext<CR>")
keymap.set("n", "<C-h>", ":bprevious<CR>")

-- symbols-outline
keymap.set("n", "<F8>", ":SymbolsOutline<CR>")

-- tagbar
keymap.set("n", "<F7>", ":TagbarToggle<CR>")
