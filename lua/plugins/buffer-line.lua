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

    vim.cmd([[
      highlight FileExplorer guibg=none
    ]])

    local buffers = require("bufferline")
    buffers.setup({
      options = {
        separator_style = "thick",
        offsets = {
          {
            filetype = "NvimTree",
            text = "  Explorer",
            text_align = "center",
            separator = true,
            highlight = "FileExplorer",
          },
        },
      },
      highlights = {
        fill = {
          bg = "#1c1c1c",
        },
        background = {
          bg = "#1c1c1c", -- #32302f
        },
        buffer_visible = {
          -- bg = "#282828",
          bg = "#1c1c1c",
        },
        separator = {
          fg = "#282828",
          bg = "#1c1c1c",
        },
        separator_selected = {
          fg = "#282828",
          bg = "#1c1c1c",
        },
        separator_visible = {
          fg = "#282828",
          bg = "#1c1c1c",
        },
        indicator_selected = {
          fg = "#fe8019",
        },
        indicator_visible = {
          bg = "#1c1c1c",
        },
        modified = {
          bg = "#1c1c1c",
        },
        modified_visible = {
          bg = "#1c1c1c",
        },
        close_button = {
          bg = "#1c1c1c",
        },
        close_button_visible = {
          bg = "#1c1c1c",
        },
        pick_visible = {
          bg = "#1c1c1c",
        },
        pick = {
          bg = "#1c1c1c",
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
    vim.keymap.set(
      "n",
      "<leader>bp",
      "<cmd>BufferLinePick<CR>",
      { noremap = true, silent = true, desc = "Go to buffer (Pick)" }
    )
    vim.keymap.set(
      "n",
      "<leader>be",
      "<cmd>BufferLinePickClose<CR>",
      { noremap = true, silent = true, desc = "Close buffer (Pick)" }
    )
  end,
}
