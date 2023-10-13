require('go').setup({
  disable_defaults = true,                        -- true|false when true set false to all boolean settings and replace all table
  luasnip = true,                                 -- enable included luasnip snippets. you can also disable while add lua/snips folder to luasnip load
  go = 'go',                                      -- go command, can be go[default] or go1.18beta1
  goimport = 'gopls',                             -- goimport command, can be gopls[default] or goimport
  fillstruct = 'gopls',                           -- can be nil (use fillstruct, slower) and gopls
  max_line_len = 128,                             -- max line length in golines format, Target maximum line length for golines
  tag_options = 'json=omitempty',                 -- sets options sent to gomodifytags, i.e., json=omitempty
  gotests_template = "",                          -- sets gotests -template parameter (check gotests for details)
  gotests_template_dir = "",                      -- sets gotests -template_dir parameter (check gotests for details)
  comment_placeholder = '',                       -- comment_placeholder your cool placeholder e.g. 󰟓       
  icons = { breakpoint = '🧘', currentpos = '🏃' }, -- setup to `false` to disable icons setup
  verbose = true,                                -- output loginf in messages
  lsp_cfg = true,                                 -- true: use non-default gopls setup specified in go/lsp.lua
  -- lsp_gofumpt = false,                            -- true: set default gofmt in gopls format to gofumpt
  -- lsp_on_attach = false                            -- nil: use on_attach function defined in go/lsp.lua,
  lsp_keymaps = false,                            -- set to false to disable gopls/lsp keymap
  lsp_codelens = false,                           -- set to false to disable codelens, true by default, you can use a function
  -- lsp_document_formatting = true,
  gopls_cmd = { "/Users/hanan/go/bin/gopls" },    -- if you need to specify gopls path and cmd, e.g {"/home/user/lsp/gopls", "-logfile","/var/log/gopls.log" }
  gopls_remote_auto = true,                       -- add -remote=auto to gopls
  run_in_floaterm = false, -- set to true to run in float window. :GoTermClose closes the floatterm
  floaterm = {
    -- position
    posititon = 'auto', -- one of {`top`, `bottom`, `left`, `right`, `center`, `auto`}
    width = 0.45,       -- width of float window if not auto
    height = 0.98,      -- height of float window if not auto
  },
  null_ls_document_formatting_disable = true,
})
