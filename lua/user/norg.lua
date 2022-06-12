require('neorg').setup {
  load = {
    ['core.integrations.nvim-cmp'] = {},
    ["core.defaults"] = {},
    ["core.norg.dirman"] = {
      config = {
        workspaces = {
          work = "~/neorg"
        }
      }
    },
    ['core.norg.concealer'] = {},
    ["core.export.markdown"] = {
      config = {}
    }
  }
}
