return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.api.nvim_create_autocmd("BufEnter", {
      pattern = "*",
      callback = function()
        if vim.bo.filetype ~= "alpha" then
          vim.opt.showtabline = 2
        end
      end,
    })
    vim.cmd([[
      highlight BufferLineOffsetSeparator guifg=#282828
      highlight BufferLineOffsetAreas guifg=#282828
    ]])
    local buffers = require("bufferline")
    buffers.setup({
      options = {
        separator_style = "thick",
        offsets = {
          {
            -- filetype = "NvimTree",
            filetype = "neo-tree",
            text = "File Explorer",
            text_align = "center",
            separator = true,
          },
        },
      },
      highlights = {
        fill = {
          bg = "#1c1c1c",
        },
        background = {
          bg = "#282828", -- #32302f
        },
        buffer_visible = {
          bg = "#282828",
        },
        separator = {
          fg = "#1c1c1c",
          bg = "#282828",
        },
        separator_selected = {
          fg = "#1c1c1c",
          bg = "#282828",
        },
        separator_visible = {
          fg = "#1c1c1c",
          bg = "#282828",
        },
        indicator_selected = {
          fg = "#fe8019",
        },
        indicator_visible = {
          bg = "#282828",
        },
        modified = {
          bg = "#282828",
        },
        modified_visible = {
          bg = "#282828",
        },
        close_button = {
          bg = "#282828",
        },
        close_button_visible = {
          bg = "#282828",
        },
      },
    })
    vim.keymap.set("n", "H", "<cmd>bp<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "L", "<cmd>bn<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>bc", "<cmd>bd<CR>", { noremap = true, silent = true, desc = "Close current buffer" })
    vim.keymap.set(
      "n",
      "<leader>bl",
      "<cmd>BufferLineCloseRight<CR>",
      { noremap = true, silent = true, desc = "Close buffers on the right" }
    )
    vim.keymap.set(
      "n",
      "<leader>bh",
      "<cmd>BufferLineCloseLeft<CR>",
      { noremap = true, silent = true, desc = "Close buffers on the left" }
    )
  end,
}
