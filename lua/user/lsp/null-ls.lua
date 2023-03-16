local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

local code_actions = null_ls.builtins.code_actions

local sources = {
  formatting.yamlfmt,
  formatting.jq,
  diagnostics.fish,
  formatting.prettier.with({
    command = "/opt/homebrew/bin/prettier",
    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "smarty" },
    disabled_filetypes = { "lua" },
  }),
  -- diagnostics.revive,
  formatting.golines.with({
    extra_args = {
      "--max-len=180",
      "--base-formatter=gofumpt",
    },
  })
}


-- for go.nvim
-- local gotest = require("go.null_ls").gotest()
-- local gotest_codeaction = require("go.null_ls").gotest_action()
-- local golangci_lint = require("go.null_ls").golangci_lint()

-- table.insert(sources, gotest)
-- table.insert(sources, gotest_codeaction)
-- table.insert(sources, golangci_lint)

null_ls.setup({ sources = sources, debounce = 1000, default_timeout = 5000 })
