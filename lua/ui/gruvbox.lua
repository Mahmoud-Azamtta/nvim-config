return {
  "sainnhe/gruvbox-material",
  config = function()
    vim.g.gruvbox_material_foreground = "original"
    vim.g.gruvbox_material_background = "hard"
    vim.g.gruvbox_material_transparent_background = 1
    vim.cmd("colorscheme gruvbox-material")
  end,
  -- "ellisonleao/gruvbox.nvim",
  -- priority = 1000,
  -- config = function()
  --   require("gruvbox").setup({
  --     terminal_colors = true, -- add neovim terminal colors
  --     undercurl = true,
  --     underline = true,
  --     bold = true,
  --     italic = {
  --       strings = true,
  --       emphasis = true,
  --       comments = true,
  --       operators = false,
  --       folds = true,
  --     },
  --     strikethrough = true,
  --     invert_selection = false,
  --     invert_signs = false,
  --     invert_tabline = false,
  --     invert_intend_guides = false,
  --     inverse = true, -- invert background for search, diffs, statuslines and errors
  --     contrast = "hard", -- can be "hard", "soft" or empty string
  --     palette_overrides = {},
  --     overrides = {},
  --     dim_inactive = false,
  --     transparent_mode = true,
  --   })
  --   vim.o.background = "dark"
  --   vim.cmd("colorscheme gruvbox")
  -- end,
  -- opts = ...,
}
