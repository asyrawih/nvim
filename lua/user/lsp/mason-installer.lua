require("mason").setup()
require("mason-lspconfig").setup()
require("mason-lspconfig").setup_handlers({
  function(server)
    local opts = {
      on_attach = require("user.lsp.handlers").on_attach,
      capabilities = require("user.lsp.handlers").capabilities,
    }

    require("lspconfig")[server].setup(opts)

    if server == "gopls" then
      require "lspconfig".gopls.setup {
        settings = {
          gopls = {
            gofumpt = true
          }
        }
      }
    end

    if server == "sumneko_lua" then
      local sumneko_opts = require("user.lsp.settings.sumneko_lua")
      -- assuming sumneko_opts return a table
      sumneko_opts["on_attach"] = opts.on_attach
      sumneko_opts["capabilities"] = opts.capabilities
      require("lspconfig")[server].setup(sumneko_opts)
    end
  end,
})
