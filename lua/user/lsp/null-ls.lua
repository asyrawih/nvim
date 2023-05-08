local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

local code_actions = null_ls.builtins.code_actions

local completion = null_ls.builtins.completion

local sources = {
  completion.spell,
  formatting.yamlfmt,
  formatting.jq,
  formatting.sql_formatter,
  diagnostics.fish,
  diagnostics.golangci_lint,
  formatting.fixjson,
  formatting.prismaFmt,
  formatting.golines.with({
    extra_args = {
      "--max-len=120",
    },
  })
}

local gotest_codeaction = require("go.null_ls").gotest_action()
table.insert(sources, gotest_codeaction)


null_ls.setup({ sources = sources })
