-- Install ripgrep on windows before installing telescope
return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim", "folke/todo-comments.nvim" },
    config = function()
      local builtin = require("telescope.builtin")
      local telescope = require("telescope")
      telescope.setup({
        defaults = {
          file_ignore_patterns = { "node_modules", "__pycache__" },
        },
      })
      local opts = { noremap = true, silent = true }
      opts.desc = "Find files"
      vim.keymap.set("n", "<leader>ff", builtin.find_files, opts)
      opts.desc = "Find string"
      vim.keymap.set("n", "<leader>fl", builtin.live_grep, opts)
      opts.desc = "Git files"
      vim.keymap.set("n", "<leader>fg", builtin.git_files, opts)
      opts.desc = "Find string under cursor"
      vim.keymap.set("n", "<leader>fc", builtin.grep_string, opts)
      opts.desc = "Find todos"
      vim.keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<CR>", opts)
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      require("telescope").load_extension("ui-select")
    end,
  },
}
