return {
  "folke/todo-comments.nvim",
  event = {
    "BufReadPre",
    "BufNewFile",
  },
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local todo_comments = require("todo-comments")
    todo_comments.setup()
    local keymap = vim.keymap
    keymap.set("n", "]t", function()
      todo_comments.jump_next()
    end, { desc = "Next todo comment" })
    keymap.set("n", "[t", function()
      todo_comments.jump_prev()
    end, { desc = "Next todo comment" })
    keymap.set("n", "<leader>t", "<cmd>TodoTelescope<cr>", { noremap = true, silent = true, desc = "Show todos list" })
    -- TODO: add a shortcut to show a telescope list of todos
  end,
}
