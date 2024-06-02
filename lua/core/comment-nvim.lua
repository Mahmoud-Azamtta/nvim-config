return {
  {
    "numToStr/Comment.nvim",
    opts = {},
    lazy = false,
    config = function()
      local comment = require("Comment")
      comment.setup({
        padding = true,
        sticky = true,
        ignore = nil,
        toggler = {
          line = "<leader>/",
          -- block = "<leader>bc",
        },
        opleader = {
          line = "<leader>/",
          -- block = "<leader>b",
        },
        -- extra = {
        --   above = "<leader>cO",
        --   below = "<leader>co",
        --   eol = "<leader>cA",
        -- },
        mappings = {
          basic = true,
          extra = true,
        },
        pre_hook = nil,
        post_hook = nil,
      })
    end,
  },
}
