local opt = vim.opt

-- line number
opt.relativenumber = true
opt.number = true

-- indent
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

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

-- status line
opt.statusline:prepend("%{coc#status()}%{get(b:,'coc_current_function','')}")

vim.cmd[[colorscheme tokyonight-moon]]
