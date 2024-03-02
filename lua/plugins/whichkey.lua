return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  opts = {},
  config = function()
    local wk = require("which-key")
    wk.register({
      f = "Telescope",
      l = "LSP",
      b = "Buffers",
    }, { prefix = "<leader>" })
    wk.setup({
      window = {
        border = "none",
        position = "bottom",
        margin = { 1, 20, 1, 20 },
        padding = { 2, 2, 2, 2 },
        winblend = 10,
        zindex = 1000,
      },
      layout = {
        height = { min = 4, max = 25 },
        width = { min = 20, max = 50 },
        spacing = 3,
        align = "center",
      },
      show_help = false,
    })
  end,
}
