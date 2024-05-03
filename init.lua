local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("keymaps")
require("lazy").setup("plugins")

vim.cmd([[
  highlight Pmenu guibg=#1c1c1c
  highlight PmenuSbar guibg=#211F1E
  highlight PmenuThumb guibg=#33302E
  highlight PmenuSel guibg=#363230 guifg=#ebdbb2
  highlight NormalFloat guibg=#1c1c1c
]])

-- DO NOT TOUCH ** DANGER **
vim.cmd([[
  lua require'nvim-treesitter.install'.compilers = { 'clang' }
]])
