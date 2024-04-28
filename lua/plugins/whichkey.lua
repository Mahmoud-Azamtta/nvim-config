return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  opts = {},
  config = function()
    vim.cmd([[
      highlight WhichKeyFloat guibg=#1c1c1c
      highlight WhichKeyBorder guibg=#1c1c1c guifg=#282828 
    ]])
    local wk = require("which-key")
    wk.register({
      f = "Telescope",
      l = "LSP",
      b = "Buffers",
      e = "Explorer",
      g = "Git",
      ["/"] = "Comment current line/selection",
    }, { prefix = "<leader>" })
    wk.setup({
      window = {
        border = "single",
        position = "bottom",
        margin = { 1, 30, 1, 30 },
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
      show_help = true,
    })
  end,
}
