require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.colorscheme"
require "user.cmp"
require "user.lsp"
require "user.treesitter"
require "user.autopairs"
require "user.comment"
require "user.gitsigns"
require "user.nvim-tree"
require "user.bufferline"
require "user.lualine"
require "user.blankline"
require "user.resize"
require "user.toggleterm"
require "user.saga"
require "user.diff"
require "user.copilot_setup"

-- require "user.flutter"
-- AutoClose Tag --
local filetypes = {
  'html', 'javascript', 'javascriptreact', 'typescriptreact', 'svelte', 'vue', 'smarty'
}
require('nvim-ts-autotag').setup({
  filetypes = filetypes
})
