require('lspconfig').sqlls.setup {
  on_attach = function(client, bufnr)
    require('sqls').on_attach(client, bufnr)
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false
  end,
  settings = {
    sqls = {
      connections = {
        -- {
        --   driver = 'mysql',
        --   dataSourceName = 'root:root@tcp(127.0.0.1:3306)/sirius',
        -- },
        -- {
        --   driver = 'mysql',
        --   dataSourceName = 'd_vip_user:B~2=/OD-6auhkrHO@tcp(127.0.0.1:33306)/bitcoinid-core',
        -- },
        -- {
        --   driver = "postgres",
        --   dataSourceName = "postgres://postgres:secret@localhost:5432/ganesha",
        -- },
        {
          driver = 'postgresql',
          dataSourceName = 'host=127.0.0.1 port=5432 user=postgres password=secret dbname=news sslmode=disable',
        },
      },
    },
  },
}
