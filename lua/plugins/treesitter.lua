require'nvim-treesitter.configs'.setup {
  -- languages 
  ensure_installed = { "vim", "java", "bash", "c", "cpp", "javascript",
                       "json", "lua", "python", "typescript", "tsx", "css",
                       "go", "rust", "markdown", "markdown_inline" }, -- one of "all" or a list of languages

  highlight = { enable = true },
  indent = { enable = true },

  -- blanktrace
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}
