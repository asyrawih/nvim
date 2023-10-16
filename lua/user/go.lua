local ls = require('go.utils').load_plugin('LuaSnip', 'luasnip')

require('go').setup({
  disable_defaults = true, -- true|false when true set false to all boolean settings and replace all table
  luasnip = true, -- enable included luasnip snippets. you can also disable while add lua/snips folder to luasnip load
  go = 'go', -- go command, can be go[default] or go1.18beta1
  goimport = 'goimports', -- goimport command, can be gopls[default] or goimport
  fillstruct = 'gopls', -- can be nil (use fillstruct, slower) and gopls
  gofmt = 'gofmt', --gofmt cmd,
  max_line_len = 128, -- max line length in golines format, Target maximum line length for golines
  tag_transform = false, -- can be transform option("snakecase", "camelcase", etc) check gomodifytags for details and more options
  tag_options = 'json=omitempty', -- sets options sent to gomodifytags, i.e., json=omitempty
  gotests_template = "", -- sets gotests -template parameter (check gotests for details)
  gotests_template_dir = "", -- sets gotests -template_dir parameter (check gotests for details)
  comment_placeholder = '', -- comment_placeholder your cool placeholder e.g. 󰟓       
  icons = { breakpoint = '🧘', currentpos = '🏃' }, -- setup to `false` to disable icons setup
  verbose = true, -- output loginf in messages
  lsp_cfg = {
    settings = {
      gopls = {
        staticcheck = true,
        analyses = {
          ST1000 = false,
          ST1003 = false
        }
      }
    }

  },                                                                                            -- true: use non-default gopls setup specified in go/lsp.lua
  gopls_cmd = { "/Users/hanan/go/bin/gopls", "-logfile", "/Users/hanan/tmp/gonvim/gopls.log" }, -- if you need to specify gopls path and cmd, e.g {"/home/user/lsp/gopls", "-logfile","/var/log/gopls.log" }
  gopls_remote_auto = true,                                                                     -- add -remote=auto to gopls
  gocoverage_sign = "█",
  sign_priority = 5,                                                                            -- change to a higher number to override other signs
  dap_debug = true,                                                                             -- set to false to disable dap
  dap_debug_keymap = true,                                                                      -- true: use keymap for debugger defined in go/dap.lua
  -- false: do not use keymap in go/dap.lua.  you must define your own.
  -- windows: use visual studio keymap
  dap_debug_gui = {},                                            -- bool|table put your dap-ui setup here set to false to disable
  dap_debug_vt = { enabled_commands = true, all_frames = true }, -- bool|table put your dap-virtual-text setup here set to false to disable

  dap_port = 38697,                                              -- can be set to a number, if set to -1 go.nvim will pickup a random port
  dap_timeout = 15,                                              --  see dap option initialize_timeout_sec = 15,
  dap_retries = 20,                                              -- see dap option max_retries
  build_tags = "tag1,tag2",                                      -- set default build tags
  textobjects = true,                                            -- enable default text jobects through treesittter-text-objects
  test_runner = 'go',                                            -- one of {`go`, `richgo`, `dlv`, `ginkgo`, `gotestsum`}
  verbose_tests = true,                                          -- set to add verbose flag to tests deprecated, see '-v' option
  run_in_floaterm = false,                                       -- set to true to run in float window. :GoTermClose closes the floatterm
  -- float term recommend if you use richgo/ginkgo with terminal color

  floaterm = {          -- position
    posititon = 'auto', -- one of {`top`, `bottom`, `left`, `right`, `center`, `auto`}
    width = 0.45,       -- width of float window if not auto
    height = 0.98,      -- height of float window if not auto
  },
})
