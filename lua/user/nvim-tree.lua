
require 'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  hijack_cursor       = false,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  open_on_tab         = false,
  update_cwd          = true,
  diagnostics         = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  filters             = {
    dotfiles = false,
    custom = {}
  },
  git                 = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view                = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    mappings = {
      custom_only = false,
      list = {}
    },
    number = false,
    relativenumber = false,
    signcolumn = "yes"
  },
  trash               = {
    cmd = "trash",
    require_confirm = true
  },
  update_focused_file = {
    enable = true,
    update_cwd = false,
    ignore_list = { '.git', 'node_modules', '.cache' }
  },

  renderer = {
    icons = {
      glyphs = {
        git = {
          unstaged = "",
          staged = "",
          unmerged = "",
          renamed = "➜",
          deleted = "",
          untracked = "U",
          ignored = "◌",
        },
        folder = {
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
        },
        default = "",
        symlink = "",
      }
    }
  }

}
