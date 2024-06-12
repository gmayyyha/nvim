-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.nvim_tree_allow_resize = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

function NvimTree_width_ratio(percentage)
	local ratio = percentage / 100
	local width = math.floor(vim.go.columns * ratio)
	return width
end


-- resize nvimtree if window got resized
vim.api.nvim_create_autocmd({ "VimResized" }, {
	group = vim.api.nvim_create_augroup("NvimTreeResize", { clear = true }),
	callback = function()
		local width = NvimTree_width_ratio(20)
		vim.cmd("tabdo NvimTreeResize " .. width)
	end,
})


-- empty setup using defaults
require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
--        width = 5,
        adaptive_size = true,
--        preserve_window_proportions = true,
    },
    actions = {
        open_file = {
            resize_window = true,
        }
    }
})
