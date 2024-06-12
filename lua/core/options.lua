local opt = vim.opt

-- line number
opt.relativenumber = true
opt.number = true

-- swap
-- opt.swapfile = false

-- indent
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- opt.colorcolumn = "80"

-- wrap
opt.wrap = false

-- cursor
opt.cursorline = true

-- mouse
opt.mouse:append("a")

-- clipboard
opt.clipboard:append("unnamedplus")

-- window
opt.splitright = true
opt.splitbelow = true

-- search
opt.ignorecase = true
opt.smartcase = true

-- colors
opt.termguicolors = true
opt.signcolumn = "yes"

-- 禁止创建备份文件
opt.backup = false
opt.writebackup = false
opt.swapfile = false

-- status line
--opt.statusline:prepend("%{coc#status()}%{get(b:,'coc_current_function','')}")

vim.cmd[[colorscheme tokyonight-moon]]
