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
        side = "left",
        signcolumn = "yes",
        cursorline = true,
      },
      renderer = {
        root_folder_label = function(cwd)
          local project_name = cwd:match("([^\\]+)$")
          return "…\\" .. project_name
        end,
        group_empty = true,
        indent_markers = {
          enable = true,
          inline_arrows = false,
          icons = {
            corner = "╰", -- └
            edge = "│",
            item = "│",
            bottom = "─",
            none = " ",
          },
        },
        icons = {
          show = {
            folder_arrow = false,
          },
          glyphs = {
            folder = {
              arrow_closed = "", -- 
              arrow_open = "", -- 
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
  -- "nvim-neo-tree/neo-tree.nvim",
  -- branch = "v3.x",
  -- dependencies = {
  --   "nvim-lua/plenary.nvim",
  --   "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
  --   "MunifTanjim/nui.nvim",
  --   -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  -- },
  -- config = function()
  --   require("neo-tree").setup({
  --     popup_border_style = "rounded",
  --     default_component_configs = {
  --       filesystem = {
  --         hijack_netrw_behavior = "open_current",
  --       },
  --     },
  --   })
  --
  --   vim.keymap.set(
  --     "n",
  --     "<leader>ee",
  --     "<cmd>Neotree toggle<CR>",
  --     { noremap = true, silent = true, desc = "File explorer" }
  --   )
  -- end,
}
