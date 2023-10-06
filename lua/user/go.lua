-- require('go').setup({
--   disable_defaults = true, -- true|false when true set false to all boolean settings and replace all table
--   luasnip = true,          -- enable included luasnip snippets. you can also disable while add lua/snips folder to luasnip load
--   gofmt = 'gofumpt',       -- gofmt cmd,
--   lsp_gofumpt = true,      -- true: set default gofmt in gopls format to gofumpt
--   tag_options = 'json=',   -- sets options sent to gomodifytags, i.e., json=omitempty
--   lsp_keymaps = false,     -- set to false to disable gopls/lsp keymap
--   lsp_diag_hdlr = true,    -- hook lsp diag handler
--   lsp_diag_underline = true,
--   -- virtual text setup
--   lsp_diag_virtual_text = { space = 0, prefix = "" },
--   lsp_diag_signs = true,
--   lsp_diag_update_in_insert = false,
--   lsp_document_formatting = true,
--   gopls_remote_auto = true,
--   test_runner = 'go',    -- one of {`go`, `richgo`, `dlv`, `ginkgo`, `gotestsum`}
--   verbose_tests = false, -- set to add verbose flag to tests deprecated, see '-v' option
--   textobjects = true,    -- enable default text jobects through treesittter-text-objects
--   floaterm = {
--     posititon = 'right', -- one of {`top`, `bottom`, `left`, `right`, `center`, `auto`}
--     width = 0.45,        -- width of float window if not auto
--     height = 0.98,       -- height of float window if not auto
--   },
-- })
--
require('go').setup {
	disable_defaults = true,
	luasnip = true,
	floaterm = {
		posititon = 'right', -- one of {`top`, `bottom`, `left`, `right`, `center`, `auto`}
		width = 0.45,      -- width of float window if not auto
		height = 0.98,     -- height of float window if not auto
	}
}
