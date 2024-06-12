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
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- bufferline
keymap.set("n", "<C-l>", ":bnext<CR>")
keymap.set("n", "<C-h>", ":bprevious<CR>")
keymap.set("n", "<leader>bd", ":bd<CR>")

-- symbols-outline
keymap.set("n", "<F8>", ":SymbolsOutline<CR>")

-- tagbar
keymap.set("n", "<F7>", ":TagbarToggle<CR>")

-- codeium
    -- Change '<C-g>' here to any keycode you like.
keymap.set('i', '<C-g>', function () return vim.fn['codeium#Accept']() end, { expr = true })
keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })

