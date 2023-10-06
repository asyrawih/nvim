require 'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  hijack_cursor       = true,
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
    dotfiles = true,
    custom = {}
  },
  git                 = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view                = {
    width = 40,
    side = 'left',
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

  renderer            = {
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
