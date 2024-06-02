return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },
  {
    "windwp/nvim-ts-autotag",
    ddependencies = "nvim-treesitter/nvim-treesitter",
    config = function()
      local autotag = require("nvim-ts-autotag")
      autotag.setup()
    end,
  },
}
