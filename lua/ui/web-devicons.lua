return {
  "nvim-tree/nvim-web-devicons",
  config = function()
    local icons = require("nvim-web-devicons")
    icons.setup({
      override_by_extension = {
        ["js"] = {
          icon = "",
          color = "#f7c81e",
          name = "JavaScript",
        },
        ["cjs"] = {
          icon = "",
          color = "#f7c81e",
          name = "JavaScript",
        },
        ["toml"] = {
          icon = "",
          color = "#888888",
          name = "toml",
        },
      },
      override_by_filename = {
        [".prettierrc"] = {
          icon = "",
          color = "#dd95b4",
          name = "prettierrc",
        },
      },
    })
  end,
}
