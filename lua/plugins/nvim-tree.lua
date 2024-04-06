return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local nvimTree = require("nvim-tree")
    local view = require("nvim-tree.view")
    local api = require("nvim-tree.api")
    vim.cmd([[ highlight NvimTreeGitNew guifg=#b16286 ]])
    vim.cmd([[ highlight NvimTreeGitNewIcon guifg=#b16286 ]])
    vim.cmd([[ highlight NvimTreeGitDirty guifg=##FB4934 ]])

    nvimTree.setup({
      -- hijack_cursor = true,
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 40,
        signcolumn = "yes",
      },
      renderer = {
        group_empty = true,
        indent_markers = {
          enable = true,
          inline_arrows = true,
          icons = {
            corner = "╰", -- └
            edge = "│",
            item = "│",
            bottom = "─",
            none = " ",
          },
        },
        icons = {
          glyphs = {
            folder = {
              arrow_closed = "", --
              arrow_open = "", --
            },
          },
        },
      },
      filters = {
        dotfiles = false,
      },
    })
    local opts = { noremap = true, silent = true }
    opts.desc = "Show file explorer"
    vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", opts)
    opts.desc = "Toggle on current file"
    vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", opts)
    opts.desc = "Refresh file explorer"
    vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", opts)
  end,
}
