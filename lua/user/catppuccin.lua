local catppuccin = require "catppuccin"

catppuccin.setup({
  transparent_background = false,
  term_colors = true,
  styles = {
    comments = "italic",
    functions = "italic",
    keywords = "italic",
    strings = "NONE",
    variables = "italic",
  },
  integrations = {
    treesitter = true,
    native_lsp = {
      enabled = true,
      virtual_text = {
        enabled = true,
        errors = "italic",
        hints = "italic",
        warnings = "italic",
        information = "italic",
      },
      underlines = {
        errors = "underline",
        hints = "underline",
        warnings = "underline",
        information = "underline",
      },
    },
    cmp = true,
    lsp_saga = true,
    gitgutter = false,
    gitsigns = true,
    telescope = true,
    nvimtree = {
      enabled = true,
      show_root = false,
      transparent_panel = true,
    },
    indent_blankline = {
      enabled = true,
      colored_indent_levels = true,
    },
    neogit = true,
    vim_sneak = true,
    bufferline = true,
    markdown = true,
    ts_rainbow = true,
    hop = false,
    notify = false,
    telekasten = true,
    symbols_outline = false,
  }
})
