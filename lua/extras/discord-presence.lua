return {
  "ObserverOfTime/nvimcord",
  config = function()
    require("nvimcord").setup({
      autostart = true,
      large_file_icons = false,
      workspace_name = "some shit",
      workspace_url = "",
    })
  end,
}
