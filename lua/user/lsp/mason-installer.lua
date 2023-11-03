require("mason").setup()
require("mason-lspconfig").setup()
require("mason-lspconfig").setup_handlers({
  function(server)
    local opts = {
      on_attach = require("user.lsp.handlers").on_attach,
      capabilities = require("user.lsp.handlers").capabilities,
    }

    require("lspconfig")[server].setup(opts)

    if server == "terraformls" then
      local tera = require("user.lsp.settings.terraform")
      tera["on_attach"] = opts.on_attach
      tera["capabilities"] = opts.capabilities
      require("lspconfig")[server].setup(tera)
    end

    if server == "cssls" then
      local cssls_setting = require("user.lsp.settings.cssls.cssls")
      cssls_setting["on_attach"] = opts.on_attach
      cssls_setting["capabilities"] = opts.capabilities
      cssls_setting["filetypes"] = { "css", "less", "scss" }
      require("lspconfig")[server].setup(cssls_setting)
    end

    if server == "intelephense" then
      local php = require("user.lsp.settings.php")
      php["on_attach"] = opts.on_attach
      php["capabilities"] = opts.capabilities
      require("lspconfig")[server].setup(php)
    end

    if server == "sumneko_lua" then
      local sumneko_opts = require("user.lsp.settings.sumneko_lua")
      sumneko_opts["on_attach"] = opts.on_attach
      sumneko_opts["capabilities"] = opts.capabilities
      require("lspconfig")[server].setup(sumneko_opts)
    end

    if server == "tsserver" then
      local tsserver_setting = require("user.lsp.settings.tsserver")
      tsserver_setting["on_attach"] = opts.on_attach
      tsserver_setting["capabilities"] = opts.capabilities
      tsserver_setting["init_options"] = {
        preferences = {
          disableSuggestions = true,
        },
      }
      require("lspconfig")[server].setup(tsserver_setting)
    end
    if server == "elixirls" then
      require("lspconfig")[server].setup({
        on_attach = opts.on_attach,
        capabilities = opts.capabilities,
        flags = {
          debounce_text_changes = 150,
        },
        elixirLS = {
          dialyzerEnabled = false,
          fetchDeps = false,
        },
      })
    end
  end,
})
