vim.g.mapleader = " "
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.python3_host_prog = "C:\\Users\\m7mod\\AppData\\Local\\Programs\\Python\\Python311\\python.exe"
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
-- vim.opt.pumblend = 10
vim.opt.pumheight = 10
vim.opt.scrolloff = 20
vim.opt.splitright = true
vim.opt.splitbelow = true

-- [[ folds options ]] --
-- vim.o.foldcolumn = "1"
vim.o.foldlevel = 99
-- vim.o.foldlevelstart = true
vim.o.foldenable = true
-- vim.o.fillchars = [[eob: ,fold: ,foldopen:-,foldsep: ,foldclose:+]]

-- [[ Blinking cursor ]] --
-- vim.opt.guicursor = {
--   "n-v-c:block",
--   "i-ci-ve:ver25",
--   "r-cr:hor20",
--   "o:hor50",
--   "a:blinkwait700-blinkoff400-blinkon250",
--   "sm:block-blinkwait175-blinkoff150-blinkon175",
-- }

local signs = { ERROR = "", WARN = "", HINT = "", INFO = "" }

vim.diagnostic.config({
  virtual_text = {
    prefix = "",
    --   function(diagnostic)
    --   return signs[vim.diagnostic.severity[diagnostic.severity]]
    -- end,
  },
})

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set clipboard+=unnamedplus")

vim.api.nvim_create_augroup("FileTypeIndentation", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
  group = "FileTypeIndentation",
  pattern = { "cs", "python" }, -- I like my indentations to be 4 spaces in csharp and python :)
  callback = function()
    -- print("Tab is 4 spaces in this file!")
    vim.cmd("setlocal tabstop=4")
    vim.cmd("setlocal softtabstop=4")
    vim.cmd("setlocal shiftwidth=4")
  end,
})
