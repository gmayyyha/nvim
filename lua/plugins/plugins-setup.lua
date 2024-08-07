-- auto install packer
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- theme
  use 'folke/tokyonight.nvim'

  -- status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons' }
  }

--  use {
--    'neoclide/coc.nvim', branch = 'release'
--  }

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    }
  }

  use 'nvim-treesitter/nvim-treesitter'
--  use 'p00f/nvim-ts-rainbow'
  use 'HiPhish/rainbow-delimiters.nvim'

  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",  -- 这个相当于mason.nvim和lspconfig的桥梁
    "neovim/nvim-lspconfig"
  }

  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "L3MON4D3/LuaSnip" -- snippets引擎，不装这个自动补全会出问题
  use "saadparwaiz1/cmp_luasnip"
  use "rafamadriz/friendly-snippets"
  use "hrsh7th/cmp-path" -- 文件路径
  use "hrsh7th/cmp-buffer"

  -- vsnip
  use {'hrsh7th/cmp-vsnip'}
  use {'hrsh7th/vim-vsnip'}

  use "windwp/nvim-autopairs" -- 自动补全括号
  use "akinsho/bufferline.nvim"

  use {
    'nvim-telescope/telescope.nvim', -- 文件检索
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'simrat39/symbols-outline.nvim',
    requires = { 'nvim-tree/nvim-web-devicons' }
  }

  use 'dhananjaylatkar/cscope_maps.nvim' -- cscope keymaps
  use 'folke/which-key.nvim' -- optional

  -- tagbar 
  use 'preservim/tagbar'

  use {
  --  'crispgm/nvim-go',
    'ray-x/go.nvim',
    'ray-x/guihua.lua',
  }

  use 'lewis6991/gitsigns.nvim'

  use {
    "Exafunction/codeium.nvim",
    requires = {
        "nvim-lua/plenary.nvim",
        "hrsh7th/nvim-cmp",
    },
    config = function()
        require("codeium").setup({
        })
    end
  }

  use 'beauwilliams/focus.nvim'

  use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end
  }

  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
