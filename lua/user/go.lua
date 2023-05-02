require('go').setup({
  disable_defaults = true, -- true|false when true set false to all boolean settings and replace all table
  luasnip = true,          -- enable included luasnip snippets. you can also disable while add lua/snips folder to luasnip load
  gofmt = 'gofumpt',       -- gofmt cmd,
  lsp_gofumpt = true,      -- true: set default gofmt in gopls format to gofumpt
  tag_options = 'json=',   -- sets options sent to gomodifytags, i.e., json=omitempty
  lsp_keymaps = false,     -- set to false to disable gopls/lsp keymap
  lsp_inlay_hints = {
    enable = false,
    -- Only show inlay hints for the current line
    only_current_line = false,
    -- Event which triggers a refersh of the inlay hints.
    -- You can make this "CursorMoved" or "CursorMoved,CursorMovedI" but
    -- not that this may cause higher CPU usage.
    -- This option is only respected when only_current_line and
    -- autoSetHints both are true.
    only_current_line_autocmd = "CursorHold",
    -- whether to show variable name before type hints with the inlay hints or not
    -- default: false
    show_variable_name = true,
    -- prefix for parameter hints
    parameter_hints_prefix = " ",
    show_parameter_hints = true,
    -- prefix for all the other hints (type, chaining)
    other_hints_prefix = "=> ",
    -- whether to align to the length of the longest line in the file
    max_len_align = false,
    -- padding from the left if max_len_align is true
    max_len_align_padding = 1,
    -- whether to align to the extreme right or not
    right_align = false,
    -- padding from the right if right_align is true
    right_align_padding = 6,
    -- The color of the hints
    highlight = "Comment",
  },
  lsp_diag_hdlr = true, -- hook lsp diag handler
  lsp_diag_underline = true,
  -- virtual text setup
  lsp_diag_virtual_text = { space = 0, prefix = "" },
  lsp_diag_signs = true,
  lsp_diag_update_in_insert = false,
  lsp_document_formatting = true,
  gopls_remote_auto = false,
  test_runner = 'go', -- one of {`go`, `richgo`, `dlv`, `ginkgo`, `gotestsum`}
  verbose_tests = false,   -- set to add verbose flag to tests deprecated, see '-v' option
  floaterm = {
    posititon = 'right',  -- one of {`top`, `bottom`, `left`, `right`, `center`, `auto`}
    width = 0.45,         -- width of float window if not auto
    height = 0.98,        -- height of float window if not auto
  },
})
