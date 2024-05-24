vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { noremap = true, silent = true, desc = "Write current buffer" })
vim.keymap.set("n", "<leader>q", "<cmd>qa<CR>", { noremap = true, silent = true, desc = "Quit Neovim" })
vim.keymap.set("n", "<leader>h", "<cmd>noh<CR>", { noremap = true, silent = true, desc = "Remove search highlights" })
vim.keymap.set("n", "<leader>L", "<cmd>Lazy<CR>", { noremap = true, silent = true, desc = "Lazy" })
vim.keymap.set(
  "n",
  "<leader>4",
  -- "<cmd>setlocal tabstop=4 softtabstop=4 shiftwidth=4<CR>",
  function()
    vim.cmd("setlocal tabstop=4 softtabstop=4 shiftwidth=4")
    print("Indentation size is set to 4 in this buffer")
  end,
  { noremap = true, silent = true, desc = "Localy set indentation to 4 spaces" }
)
vim.keymap.set(
  "n",
  "<leader>2",
  -- "<cmd>setlocal tabstop=2 softtabstop=2 shiftwidth=2<CR>",
  function()
    vim.cmd("setlocal tabstop=2 softtabstop=2 shiftwidth=2")
    print("Indentation size is set to 2 in this buffer")
  end,
  { noremap = true, silent = true, desc = "Localy set indentation to 2 spaces" }
)
