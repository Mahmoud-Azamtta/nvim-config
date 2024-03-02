vim.g.mapleader = " "
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.clipboard = {
  copy = {
    ["+"] = "win32yank.exe -i --crlf",
    ["*"] = "win32yank.exe -i --crlf",
  },
  paste = {
    ["+"] = "win32yank.exe -o --lf",
    ["*"] = "win32yank.exe -o --lf",
  },
}

vim.o.shell = "pwsh.exe"
vim.o.shellcmdflag = "-c"

vim.opt.fillchars = { eob = " " }
vim.opt.wrap = true
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"
vim.opt.numberwidth = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.pumblend = 15
vim.opt.pumheight = 10
vim.opt.scrolloff = 10

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set clipboard+=unnamedplus")
