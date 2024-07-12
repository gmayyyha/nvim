vim.g.mapleader = " "

local keymap = vim.keymap   -- for conciseness

-- --------- insert mode ---------
keymap.set("i", "jk", "<ESC>", { desc = "Exit innsert mode with jk " })

-- --------- visual mode ---------
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- --------- normal mode ---------
-- windows
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make split windows equal width & height" })
keymap.set("n", "<leader>sc", ":close<CR>", { desc = "Close the current split window" })

keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tc", ":tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", ":tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", ":tabp<CR>", { desc = "Go to previous tab" })

-- cancel highlight
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlight" })

-- --------- plugins ---------
-- bufferline
keymap.set("n", "<C-l>", ":bnext<CR>", { desc = "Go to next buffer" })
keymap.set("n", "<C-h>", ":bprevious<CR>", { desc = "Go to previous buffer" })
keymap.set("n", "<leader>bd", ":bd<CR>", { desc = "Close current buffer" })

-- symbols-outline
keymap.set("n", "<F8>", ":SymbolsOutline<CR>", { desc = "Toggle symbols outline" })

-- tagbar
keymap.set("n", "<F7>", ":TagbarToggle<CR>", { desc = "Toggle symbols outline" })

keymap.set('c', '<tab>', '<C-z>', { silent = false })

-- codeium
    -- Change '<C-g>' here to any keycode you like.
keymap.set('i', '<C-g>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
