local configs = require("nvim-treesitter.configs")
local filetypes = { 'html', 'javascript', 'javascriptreact', 'typescriptreact', 'svelte', 'vue', 'smarty', 'php' }

require('nvim-ts-autotag').setup({
  filetypes = filetypes,
})

vim.g.skip_ts_context_commentstring_module = true

configs.setup {
  autotag = {
    enable = true,
    filetypes = filetypes
  },
  ensure_installed = "all",
  sync_install = false,
  ignore_install = { "phpdoc" }, -- List of parsers to ignore installing
  autopairs = {
    enable = true,
  },
  highlight = {
    enable = true,    -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = true, disable = { "yaml" } },
}
