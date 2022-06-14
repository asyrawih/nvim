local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
  return
end

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
  local opts = {
    on_attach = require("user.lsp.handlers").on_attach,
    capabilities = require("user.lsp.handlers").capabilities,
  }

  if server.name == "sumneko_lua" then
    opts = vim.tbl_deep_extend("force", {
      settings = {
        Lua = {
          runtime = { version = 'LuaJIT', path = vim.split(package.path, ';') },
          diagnostics = { globals = { 'vim' } },
          workspace = { library = vim.api.nvim_get_runtime_file("", true), checkThirdParty = false },
          telemetry = { enable = false }
        }
      }

    }, opts)
  end

  if server.name == "tsserver" then
    opts = vim.tbl_deep_extend("force", {
      init_options = {
        -- disableSuggestions for tsserver
        preferences = {
          disableSuggestions = true,
        },
      }
    }, opts)
  end

  if server.name == 'rust_analyzer' then
    opts = vim.tbl_deep_extend("force", {
      settings = {
        rust = {
          cargo = {
            manifest_path = vim.fn.expand("$VIMRUNTIME/cargo/Cargo.toml"),
          },
        },
      },
    }, opts)
  end

  server:setup(opts)
end)
