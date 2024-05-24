return {
  "lewis6991/gitsigns.nvim",
  config = function()
    local gitsigns = require("gitsigns")
    gitsigns.setup({
      signs = {
        add = { text = "│" },
        change = { text = "│" },
        delete = { text = "" },
        topdelete = { text = "" },
        changedelete = { text = "│" },
        untracked = { text = "┆" },
      },
      signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
      numhl = false, -- Toggle with `:Gitsigns toggle_numhl`
      linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
      word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
      watch_gitdir = {
        follow_files = true,
      },
      auto_attach = true,
      attach_to_untracked = true,
      current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
        delay = 1000,
        ignore_whitespace = false,
        virt_text_priority = 100,
      },
      current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
      sign_priority = 6,
      update_debounce = 100,
      status_formatter = nil, -- Use default
      max_file_length = 40000, -- Disable if file is longer than this (in lines)
      preview_config = {
        -- Options passed to nvim_open_win
        border = "single",
        style = "minimal",
        relative = "cursor",
        row = 0,
        col = 1,
      },
      yadm = {
        enable = false,
      },
    })
    local opts = { noremap = true, silent = true }
    opts.desc = "Preview hunk"
    vim.keymap.set("n", "<leader>gh", "<cmd>Gitsigns preview_hunk_inline<CR>", opts)
    opts.desc = "Toggle line blame"
    vim.keymap.set("n", "<leader>gb", "<cmd>Gitsigns toggle_current_line_blame<CR>", opts)
    opts.desc = "Reset changes in current buffer"
    vim.keymap.set("n", "<leader>gR", "<cmd>Gitsigns reset_buffer<CR>", opts)
    opts.desc = "Reset changes for the hunk under cursor"
    vim.keymap.set("n", "<leader>gr", "<cmd>Gitsigns reset_hunk<CR>", opts)
  end,
}
