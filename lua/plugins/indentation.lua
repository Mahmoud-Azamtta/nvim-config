return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {},
  config = function()
    local ibl = require("ibl")
    ibl.setup({
      indent = {
        char = "▏",
      },
      scope = {
        show_start = false,
        show_end = false,
        show_exact_scope = true,
      },
    })
  end,
}
