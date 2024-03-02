-- function Open_files_and_set_cwd()
--   require("telescope.builtin").find_files({
--     cwd = "~/Github/",
--     attach_mappings = function(prompt_bufnr, map)
--       local dir = nil
--       local change_directory_to_selected_file = function()
--         local selection = require("telescope.actions.state").get_selected_entry()
--         dir = vim.fn.fnamemodify(selection.path, ":p:h")
--         vim.cmd("cd " .. dir)
--       end
--       map("i", "<CR>", function()
--         c--[[ h ]]ange_directory_to_selected_file()
--         require("telescope.actions").select_default:enhance({
--           post = function()
--             if dir then
--               require("nvim-tree.api").tree.change_root(dir)
--             end
--           end,
--         })(prompt_bufnr)
--       end)
--       return true
--     end,
--   })
-- end

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

-- DO NOT TOUCH ** DANGER **
vim.cmd([[
  lua require'nvim-treesitter.install'.compilers = { 'clang' }
]])
