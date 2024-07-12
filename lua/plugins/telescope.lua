local telescope = require('telescope')
local actions = require('telescope.actions')

-- 进入telescope页面会是插入模式，回到正常模式就可以用j和k来移动了
telescope.setup({
    defaults = {
        path_display = { "smart" },
        mappings = {
            i = {
                ["<C-k>"] = actions.move_selection_previous, -- move to prev result
                ["<C-j>"] = actions.move_selection_next,  -- move_selection_next
                ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            },
        },
    },
})

local keymap = vim.keymap

keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "find files" })
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "find recent" })
keymap.set("n", "<leader>fs", "<cmd>Telescope grep_string<cr>", { desc = "grep string" })
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "live grep" })
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "buffers" })
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "help" })
