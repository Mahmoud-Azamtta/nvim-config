return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = { "nushell/tree-sitter-nu" },
  build = ":TSUpdate",
  config = function()
    local treesitter = require("nvim-treesitter.configs")
    treesitter.setup({
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
