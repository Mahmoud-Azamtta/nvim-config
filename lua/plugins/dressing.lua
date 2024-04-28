return {
  "stevearc/dressing.nvim",
  event = "VeryLazy",
  init = function()
    ---@diagnostic disable-next-line: duplicate-set-field
    vim.ui.select = function(...)
      require("lazy").load({ plugins = { "dressing.nvim" } })
      return vim.ui.select(...)
    end
    ---@diagnostic disable-next-line: duplicate-set-field
    vim.ui.input = function(...)
      require("lazy").load({ plugins = { "dressing.nvim" } })
      return vim.ui.input(...)
    end
  end,
  config = function()
    vim.cmd([[
      highlight FloatInputBorder guifg=#7c6f64 guibg=None
      highlight NormalFloatBG guibg=None
      highlight FloatInputTitle guibg=None guifg=#f38019
    ]])
    local dressing = require("dressing")
    dressing.setup({
      input = {
        win_options = {
          winhighlight = "Normal:NormalFloatBG,FloatBorder:FloatInputBorder,FloatTitle:FloatInputTitle",
        },
      },
    })
  end,
}
