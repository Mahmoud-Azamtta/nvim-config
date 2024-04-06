local colors = {
  black = "#1c1c1c",
  green = "#B8BB26", -- (insert)
  darker_white = "#ebdbb2", -- text white color
  white = "#fbf1c7",
  red = "#cc241d", -- (visual) mode
  light_blue = "#83A598", -- (command)
  gray = "#504945", -- second part
  light_gray = "#A89984", -- first part, (normal)
  yellow = "#FABD2F", -- (replace) mode
  inactive_gray = "#282828",
}

local lualine_theme = {
  normal = {
    a = { bg = colors.light_gray, fg = colors.black, gui = "bold" },
    b = { bg = colors.inactive_gray, fg = colors.darkder_white },
    c = { bg = colors.black, fg = colors.darker_white },
  },
  insert = {
    a = { bg = colors.green, fg = colors.black, gui = "bold" },
    b = { bg = colors.inactive_gray, fg = colors.darker_white },
    c = { bg = colors.black, fg = colors.darker_white },
  },
  visual = {
    a = { bg = colors.red, fg = colors.black, gui = "bold" },
    b = { bg = colors.inactive_gray, fg = colors.darker_white },
    c = { bg = colors.black, fg = colors.darker_white },
  },
  replace = {
    a = { bg = colors.yellow, fg = colors.black, gui = "bold" },
    b = { bg = colors.inactive_gray, fg = colors.darkder_white },
    c = { bg = colors.black, fg = colors.darker_white },
  },
  command = {
    a = { bg = colors.light_blue, fg = colors.black, gui = "bold" },
    b = { bg = colors.inactive_gray, fg = colors.darkder_white },
    c = { bg = colors.black, fg = colors.darker_white },
  },
  inactive = {
    a = { bg = colors.inactive_gray, fg = colors.black, gui = "bold" },
    b = { bg = colors.inactive_gray, fg = colors.darkder_white },
    c = { bg = colors.inactive_gray, fg = colors.darker_white },
  },
}

local function getTime()
  local time = os.date("*t")
  local hour = time.hour
  local am_pm = "AM"

  if hour >= 12 then
    am_pm = "PM"
    if hour > 12 then
      hour = hour - 12
    end
  elseif hour == 0 then
    hour = 12
  end

  local result = string.format("  %d:%02d %s", hour, time.min, am_pm)
  return result
end

return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    lualine.setup({
      options = {
        theme = lualine_theme,
        disabled_filetypes = { "alpha" },
        globalstatus = true,
      },
      sections = {
        lualine_a = {
          "mode",
        },
        lualine_b = {
          { "branch", icon = "󰘬" },
          "diff",
        },
        lualine_c = {
          "filename",
          {
            "diagnostics",
            symbols = {
              error = " ",
              warn = " ",
              info = " ",
              hint = " ",
            },
          },
        },
        lualine_x = { "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { getTime },
      },
    })
  end,
}
