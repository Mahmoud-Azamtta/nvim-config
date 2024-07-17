return {
  {
    "sainnhe/gruvbox-material",
    config = function()
      vim.g.gruvbox_material_foreground = "material"
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_transparent_background = 2
      vim.g.gruvbox_material_enable_italic = 1
      vim.g.gruvbox_material_enable_bold = 1
      vim.g.gruvbox_material_diagnostic_text_highlight = 1
      vim.g.gruvbox_material_diagnostic_virtual_text = "highlighted"
      vim.g.gruvbox_material_float_style = "dim"
      -- vim.g.gruvbox_material_current_word = "underline"
      vim.cmd("colorscheme gruvbox-material")
    end,
  },
  {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.everforest_material_foreground = "original"
      vim.g.everforest_material_background = "hard"
      vim.g.everforest_transparent_background = 2
      vim.g.everforest_enable_italic = 1
      vim.g.everforest_enable_bold = 1
      vim.g.everforest_diagnostic_text_highlight = 1
      vim.g.everforest_diagnostic_virtual_text = "highlighted"
      vim.g.everforest_float_style = "dim"
      -- vim.cmd.colorscheme("everforest")
    end,
  },
  {
    "sainnhe/sonokai",
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.g.snonoka_style = ""
      vim.g.sonokai_material_foreground = "original"
      vim.g.sonokai_material_background = "hard"
      vim.g.sonokai_transparent_background = 1
      vim.g.sonokai_enable_italic = 1
      vim.g.sonokai_enable_bold = 1
      vim.g.sonokai_diagnostic_text_highlight = 1
      vim.g.sonokai_diagnostic_virtual_text = "highlighted"
      vim.g.sonokai_float_style = "dim"
      -- vim.cmd.colorscheme("sonokai")
    end,
  },
  {
    "sainnhe/edge",
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.g.edge_style = ""
      vim.g.edge_material_foreground = "original"
      vim.g.edge_material_background = "hard"
      vim.g.edge_transparent_background = 1
      vim.g.edge_enable_italic = 1
      vim.g.edge_enable_bold = 1
      vim.g.edge_diagnostic_text_highlight = 1
      vim.g.edge_diagnostic_virtual_text = "highlighted"
      vim.g.edge_float_style = "dim"
      -- vim.cmd.colorscheme("edge")
    end,
  },
}
