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
require("lazy").setup({ { import = "core" }, { import = "ui" }, { import = "extras" } }, {
  checker = {
    enabled = true,
  },
})
require("highlights")

-- DO NOT TOUCH ** DANGER **
vim.cmd([[
  lua require'nvim-treesitter.install'.compilers = { 'clang' }
]])
