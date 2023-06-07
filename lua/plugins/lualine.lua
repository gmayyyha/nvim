require('lualine').setup({
  options = {
    theme = 'tokyonight'
  },
    sections = {
      lualine_c = {
        {
          'filename',
          file_status = true,      -- Displays file status (readonly status, modified status)
          newfile_status = false,  -- Display new file status (new file means no write after created)
          path = 4,                -- 0: Just the filename
                                   -- 1: Relative path
                                   -- 2: Absolute path
                                   -- 3: Absolute path, with tilde as the home directory
                                   -- 4: Filename and parent dir, with tilde as the home directory

          shorting_target = 40,    -- Shortens path to leave 40 spaces in the window
                                   -- for other components. (terrible name, any suggestions?)
          symbols = {
            modified = '[+]',      -- Text to show when the file is modified.
            readonly = '[-]',      -- Text to show when the file is non-modifiable or readonly.
            unnamed = '[No Name]', -- Text to show for unnamed buffers.
            newfile = '[New]',     -- Text to show for newly created file before first write
          }
        }
      }
    }
})

local M = {}

M.config = function()
	local components = require("vim.core.lualine.components")
	vim.builtin.lualine.sections.lualine_b = {
		{
			function()
				return "  " .. vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
			end,
		},
		components.branch,
	}
	vim.builtin.lualine.sections.lualine_c = {
		{
			function()
				if not vim.bo.readonly or not vim.bo.modifiable then
					return ""
				end
				return ""
			end,
			color = { fg = "#f7768e" },
		},
		components.diff,
		components.python_env,
	}
	vim.builtin.lualine.sections.lualine_x = {
		components.diagnostics,
	}
	components.lsp.icon = { " ", color = { fg = "#ddd" } }
	vim.builtin.lualine.sections.lualine_y = {
		components.treesitter,
		components.lsp,
		components.spaces,
		components.filetype,
		{ "fileformat", color = { fg = "#c2e7f0" } },
	}
	vim.builtin.lualine.sections.lualine_z = {
		{
			function()
				local function format_file_size(file)
					local size = vim.fn.getfsize(file)
					if size <= 0 then
						return ""
					end
					local sufixes = { "B", "K", "M", "G" }
					local i = 1
					while size > 1024 do
						size = size / 1024
						i = i + 1
					end
					local fmt = "%.1f%s"
					if i == 1 then
						fmt = "%d%s"
					end
					return string.format(fmt, size, sufixes[i])
				end

				local file = vim.fn.expand("%:p")
				if string.len(file) == 0 then
					return ""
				end
				return format_file_size(file)
			end,
			cond = function()
				return vim.fn.empty(vim.fn.expand("%:t")) ~= 1
			end,
		},
		{ " %l/%L  %c", type = "stl" },
		components.scrollbar,
	}
end

return M
