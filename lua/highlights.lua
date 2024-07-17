vim.cmd([[
  " highlight Pmenu guibg=#191919
  highlight Pmenu guibg=#1c1c1c
  highlight PmenuSbar guibg=#211F1E
  highlight PmenuThumb guibg=#33302E
  highlight PmenuSel guibg=#363230 guifg=#ebdbb2
  highlight CursorLineNr gui=bold
  " highlight NormalFloat guibg=#1c1c1c
  highlight NormalFloat guibg=#191919
  " highlight Folded guibg=#2E2B29 guifg=#928373
  highlight Folded guibg=#1c2426  guifg=#928373
]])

-- #182426 #192426
-- NeoTree Highlights
vim.cmd([[
  highlight NeoTreeFloatBorder guifg=#1c1c1c guibg=#1c1c1c
  highlight NeoTreeFloatTitle guifg=#fbf1c7 guibg=#427b58
  highlight NeoTreeFloatNormal guifg=#fbf1c7  guibg=#282828
]])

-- Floats Highlights
vim.cmd([[
  highlight FloatInputBorder guifg=#458588 guibg=None
  highlight NormalFloatBG guibg=None
  highlight FloatInputTitle guibg=None guifg=#689d6a
]])

-- NvimTree Highlights
vim.cmd([[
  highlight NvimTreeFolderName guifg=#8ec07c
  highlight NvimTreeNormal guifg=#bdae93
  " highlight NvimTreeMarkdownFile guifg=#bdae93 
]])

-- Indent Blankline Highlights
-- vim.cmd([[
--   highlight MyIblIndent gui=nocombine guifg=#3c3836
--   " highlight IblScope guifg=#
-- ]])
