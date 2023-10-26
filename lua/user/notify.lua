local notif = require("notify")
notif.setup({
  background_colour = "#000000",
  fps = 60,
  icons = {
    DEBUG = "",
    ERROR = "",
    INFO = "",
    TRACE = "✎",
    WARN = ""
  },
  level = 2,
  minimum_width = 50,
  render = "compact",
  stages = "fade_in_slide_out",
  timeout = 500,
  top_down = true
})

vim.notify = notif
