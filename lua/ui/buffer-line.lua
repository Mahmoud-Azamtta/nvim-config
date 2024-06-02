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
      highlight FileExplorer guibg=none
    ]])

    local buffers = require("bufferline")
    buffers.setup({
      options = {
        separator_style = "thin",
        offsets = {
          {
            filetype = "NvimTree",
            -- filetype = "neo-tree",
            text = "  Explorer",
            text_align = "center",
            separator = true,
            highlight = "FileExplorer",
          },
        },
      },
      highlights = {
        background = {
          bg = "#1c1c1c", -- #32302f
          fg = "#504945",
        },
        buffer_visible = {
          fg = "#504945",
          bg = "#1c1c1c",
        },
        separator = {
          fg = "#504945",
          bg = "#1c1c1c",
        },
        separator_selected = {
          fg = "#504945",
          -- bg = "#1c1c1c",
        },
        separator_visible = {
          fg = "#504945",
          -- bg = "#1c1c1c",
        },
        buffer_selected = {
          -- undercurl = true,
          bg = "#1c1c1c",
        },
        indicator_selected = {
          fg = "#fe8019",
          bg = "#1c1c1c",
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
        modified_selected = {
          bg = "#1c1c1c",
          -- underline = true,
        },
        close_button = {
          bg = "#1c1c1c",
          fg = "#504945",
        },
        close_button_visible = {
          bg = "#1c1c1c",
          fg = "#504945",
        },
        close_button_selected = {
          bg = "#1c1c1c",
          -- underline = true,
        },
        pick = {
          bg = "#1c1c1c",
        },
        pick_visible = {
          bg = "#1c1c1c",
        },
        pick_selected = {
          bg = "#1c1c1c",
          -- underline = true,
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
