-- load cscope maps
-- pass empty table to setup({}) for default options
require('cscope_maps').setup({
  disable_maps = false,
  skip_input_prompt = false,
  cscope = {
    db_file = "./cscope.out", -- location of cscope db file
	exec = "cscope", -- "cscope" or "gtags-cscope"
    picker = "quickfix", -- "telescope", "fzf-lua" or "quickfix"
    skip_picker_for_single_result = true, -- jump directly to position for single result
	db_build_cmd_args = { "-bqkv" }, -- args used for db build (:Cscope build)
  },
})
