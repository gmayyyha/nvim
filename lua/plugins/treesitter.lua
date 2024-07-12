require'nvim-treesitter.configs'.setup {
    highlight = { enable = true },
    indent = { enable = true },
    autotag = { enable = true },

  -- languages 
    ensure_installed = {
        "vim",
        "java",
        "bash",
        "c",
        "cpp",
        "javascript",
        "json",
        "lua",
        "python",
        "typescript",
        "tsx",
        "css",
        "go",
        "rust",
        "markdown",
        "markdown_inline"
    }, -- one of "all" or a list of languages

    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "<C-space>",
            node_incremental = "<C-space>",
            scope_incremental = false,
            node_decremental = "<bs>",
        },
    },

    -- blanktrace
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
    }
}
