-- IMPORTANT NOTE : This is default config, so dont change anything here.
-- chadrc overrides this file

local M = {}

---- UI -----

M.ui = {
   hl_override = "",
   colors = "", -- path of your file that contains colors
   theme = "catppuccin", -- default theme
   transparency = false,
}

M.plugins = {
   override = {},
   remove = {},

   options = {
      packer = {
         init_file = "plugins.packerInit",
         snapshot = nil,
      },
      lspconfig = {
         setup_lspconf = "", -- path of lspconfig file
      },
      statusline = {
         separator_style = "default", -- default/round/slant/block/arrow
      },
   },

   -- add, modify, remove plugins
   user = {},
}

-- non plugin only
M.mappings = {
   misc = function() end,
}

return M
