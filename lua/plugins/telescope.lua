-- Install ripgrep on windows before installing telescope
return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local builtin = require("telescope.builtin")
      local telescope = require("telescope")
      telescope.setup({
        defaults = {
          file_ignore_patterns = { "node_modules" },
        },
      })
      local opts = { noremap = true, silent = true }
      opts.desc = "Find files"
      vim.keymap.set("n", "<leader>ff", builtin.find_files, opts)
      -- vim.keymap.set("n", "<leader>ff", function()
      --   builtin.find_files({
      --     prompt_title = "Find Files",
      --     cwd = "C:\\Users\\m7mod\\Github",
      --   })
      -- end, opts)
      opts.desc = "Live grep"
      vim.keymap.set("n", "<leader>fl", builtin.live_grep, opts)
      opts.desc = "Git files"
      vim.keymap.set("n", "<leader>fg", builtin.git_files, opts)
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
