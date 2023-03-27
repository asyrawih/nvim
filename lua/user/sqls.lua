require('lspconfig').sqls.setup {
  on_attach = function(client, bufnr)
    require('sqls').on_attach(client, bufnr)
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false
  end,
  settings = {
    sqls = {
      connections = {
        {
          driver = 'mysql',
          dataSourceName = 'root:root@tcp(127.0.0.1:3306)/crud_test',
        },
      },
    },
  },
}
