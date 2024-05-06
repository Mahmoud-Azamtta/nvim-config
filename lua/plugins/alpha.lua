return {
  { "nvimdev/dashboard-nvim", enabled = false },
  { "echasnovski/mini.starter", enabled = false },
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    enabled = true,
    init = false,
    opts = function()
      local dashboard = require("alpha.themes.dashboard")
      dashboard.section.header.val = {
        -- [[  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⠀  ]],
        [[  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠀⠀⠀⠀  ]],
        [[  ⠀⠀⠀⠀⠀⣶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⠞⣿⠀⠀⠀⠀  ]],
        [[  ⣀⣀⣀⣀⣀⣸⣿⣿⣷⣄⣀⣄⣄⣠⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⡴⠋⠀⣸⣧⣤⣤⣤⣤  ]],
        [[  ⣿⠉⣉⣉⣉⣉⣹⣿⣿⣿⣿⣄⣀⣀⣀⣈⣉⣉⣉⣉⠉⢁⣁⣀⣀⣀⣉⣉⣉⣉⣉⡽⠋⠀⠀⣠⣟⣀⣀⣀⠀⣿  ]],
        [[  ⣿⠀⡿⣿⣯⡉⠉⠙⣿⣿⣿⣿⣯⡉⠉⠉⠉⠉⠉⣿⠀⢸⡏⠉⠉⠉⠉⠉⢉⡽⠋⠀⠀⢀⣴⠋⣩⡿⢻⣿⠀⣿  ]],
        [[  ⣿⠀⡇⠘⣿⣿⣷⣄⡈⠛⢿⣿⣿⡇⣶⣄⠀⠀⠀⣿⠀⢸⡇⠀⠀⠀⢀⡴⢻⡇⠀⢀⣴⢟⡵⠟⠁⢀⡾⢸⠀⣿  ]],
        [[  ⣿⠀⡇⠀⠹⣿⣿⣿⣿⣶⣄⡙⢿⡇⣿⣿⣷⣄⠀⣿⠀⢸⡇⠀⢀⡴⠋⠀⢸⣇⣴⡿⠟⠉⠀⠀⢀⣼⠃⢸⡀⣿  ]],
        [[  ⣿⠀⣷⣶⣦⣌⡛⢿⣿⣿⣿⣧⢰⣅⠻⣿⣿⣿⣷⣿⠀⢸⣇⠴⠋⠀⠀⣠⣾⠟⣿⠇⠀⢀⣠⣾⠿⠓⠋⢩⡇⣿  ]],
        [[  ⣿⠀⡟⢿⣿⣿⣿⣶⣌⡻⢿⣿⣸⣿⣷⣌⠻⣿⣿⣿⣧⣾⡇⠀⢀⣴⣾⠟⠁⢰⣿⣠⣴⡿⠛⠁⠀⠀⣠⢿⠀⣿  ]],
        [[  ⣿⠀⣇⠀⠙⠿⣿⣿⣿⣿⣇⢉⡙⢿⣿⣿⣧⠈⣹⠟⠁⣿⣇⣴⣿⠟⠁⠀⣠⣾⢿⣿⠉⠀⠀⣀⣴⣾⡧⣼⠀⣿  ]],
        [[  ⣿⠀⣿⣿⣶⣦⣌⠛⠿⣿⣿⡜⣿⣦⡻⠋⣡⠎⠀⠀⢀⣿⣿⡏⠁⠀⣠⡾⠟⠁⣼⡇⣀⣴⣾⠿⠛⠁⢀⣿⡅⣿  ]],
        [[  ⣿⠀⣿⣿⣿⣿⣿⣿⣦⡈⠙⠃⠹⣿⡿⢸⠃⠀⣠⣾⠿⢋⣿⠃⣠⡾⠋⠀⠀⣠⣿⣿⡿⠋⠀⠀⠀⢀⡞⢹⠂⣿  ]],
        [[  ⣿⠀⠿⠿⠿⢿⣿⣿⣿⣷⡌⢿⣦⣽⣷⡏⢀⣴⠟⠁⠀⢸⣿⡿⠋⠀⠀⣠⡾⠟⢩⣿⠃⠀⠀⢀⡴⣛⣛⣿⡁⣿  ]],
        [[  ⣿⠀⣰⣶⣦⣤⣙⣻⣿⣿⣷⡘⣿⣿⣿⣷⡿⠋⠀⢀⣴⢿⣿⠀⢀⣴⠾⠋⠀⢀⣿⡏⣠⣴⣾⡿⠟⠉⢀⣾⠀⣿  ]],
        [[  ⣿⠀⡟⢻⣿⣿⣿⣿⣭⣉⠙⠃⠘⢿⣿⡏⠀⢀⣴⠟⠁⣸⣿⣾⡟⠁⠀⠀⣀⣼⣿⣿⡿⠛⠁⠀⠀⢠⡞⢹⠀⣿  ]],
        [[  ⣿⠀⡇⠀⠙⢿⣿⣿⣿⣿⣆⢲⣤⣄⣹⢁⣴⠟⠁⢀⣴⠟⢻⣿⠀⢀⣤⣾⡿⠛⣹⡟⠀⠀⢀⣠⣴⣋⣀⢸⠀⣿  ]],
        [[  ⣿⠀⣧⣴⣦⣤⣈⡙⠻⣿⣿⡌⣿⣿⣿⡿⠋⢀⣴⠟⠃⢀⣿⣷⣾⠿⠋⠁⠀⢠⣿⣣⣴⠾⠛⠋⠉⣹⠏⢸⡄⣿  ]],
        [[  ⣿⠀⣿⠈⠻⣿⣿⣿⣷⣦⡈⠁⠘⠻⣿⠀⣠⡾⠃⢀⣴⣿⣿⡟⠁⠀⣀⣴⣾⣿⣿⠟⠁⠀⠀⢀⡼⠃⠀⢸⠆⣿  ]],
        [[  ⣿⠀⣿⠀⠀⠈⠻⣿⣿⣿⣿⡌⢿⣷⣿⡾⠋⢀⣴⠟⠉⢸⣿⣠⣶⡿⠟⠛⠉⣼⡏⢀⣠⣤⣶⠿⠶⣶⠀⢸⡀⣿  ]],
        [[  ⣿⠀⣿⠰⣿⣿⣶⣦⣌⡉⠛⠻⠈⢿⡏⢀⡴⠟⠁⣠⣴⣿⣿⡟⠉⠀⠀⣀⣸⣿⣾⠿⠛⠉⠀⣀⡾⠃⠀⢸⠀⣿  ]],
        [[  ⣿⠀⣿⠀⠈⠛⢿⣿⣿⣿⣿⣦⢠⣼⡷⢋⣠⣶⡿⠟⠋⣽⣏⣀⣤⣶⣿⠿⢻⣿⠁⠀⣀⣤⠾⠋⠀⠀⠀⢸⡀⣿  ]],
        [[  ⣿⠀⡇⠀⠀⠀⢠⣬⣉⡛⠿⢿⣧⣹⣶⡿⠛⠉⢀⣠⣴⣿⠿⠟⠋⠁⠀⣠⣿⣷⠶⠛⠛⢋⡿⠁⠀⠀⠀⢸⡇⣿  ]],
        [[  ⣿⠀⢷⣄⡀⠀⠈⠻⣿⣿⣿⣶⣦⡟⠉⣀⣤⠶⠛⢉⣿⠇⣀⣠⡴⠶⠛⣽⡟⠀⠀⢀⣠⠟⠀⠀⠀⣀⣤⡾⠃⣿  ]],
        [[  ⠻⢦⣄⡈⠛⠶⣤⣀⠈⠙⠛⠿⣿⡷⠟⠋⢀⣠⣴⣿⡿⠛⠉⠁⣀⣠⣾⣿⣴⡶⠿⢯⣤⣀⣤⡶⠟⠋⣁⣤⡶⠟  ]],
        [[  ⠀⠀⠉⠻⢶⣤⣈⠙⠳⣿⣿⣷⣏⣤⣴⠾⠛⠉⣠⣿⣣⣴⡶⠿⣻⡿⠋⠉⠀⠀⢀⣴⠿⠛⢁⣠⡴⠞⠋⠁⠀⠀  ]],
        [[  ⠀⠀⠀⠀⠀⠈⠙⠷⣦⣄⣽⠿⠋⠉⠀⢀⣠⣾⣿⣯⣭⣤⣤⣾⣿⣤⣤⣤⣶⣾⣿⣤⣴⠾⠋⠁⠀⠀⠀⠀⠀⠀  ]],
        [[  ⠀⠀⠀⠀⠀⠀⠀⢀⣴⠟⠁⣀⣤⡶⠛⠻⣯⣄⣿⠀⠀⣿⣩⣴⠾⠛⢉⣬⣿⠿⠿⣿⣷⣤⡀⠀⠀⠀⠀⠀⠀⠀  ]],
        [[  ⠀⠀⠀⠀⠀⢀⣴⣯⡵⠞⠋⠁⠈⠛⠷⣦⣄⠉⠛⠀⠀⠛⢉⣠⣴⠾⠛⠉⠀⠀⠀⠀⠈⠙⠻⠦⡀⠀⠀⠀⠀⠀  ]],
        [[  ⠀⠀⠀⠀⠀⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⢶⣤⣴⡾⠟⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ]],
        [[  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ]],
        [[  ⠀⠀⠀⠀⠀⠀     Neovim is freedom   ⠀⠀⠀⠀  ⠀⠀⠀  ]],
      }
      dashboard.section.buttons.val = {
        -- dashboard.button("f", " " .. " Find file", "<cmd> Telescope find_files <cr>"),
        dashboard.button(
          "f",
          " " .. " Find file",
          "<cmd>lua require('telescope.builtin').find_files({ cwd = '~/Github/' })<CR>"
          -- "<cmd>lua Open_files_and_set_cwd()<CR>"
        ),
        -- dashboard.button("n", " " .. " New file", "<cmd> ene <BAR> startinsert <cr>"),
        dashboard.button("s", " " .. " Open session", "<cmd>lua require('persistence').load()<CR>"),
        dashboard.button("l", " " .. " Last session", "<cmd>lua require('persistence').load({ last = true })<CR>"),
        dashboard.button(
          "r",
          " " .. " Recent files",
          "<cmd>lua require('telescope.builtin').oldfiles({ cwd = '~/Github/' })<CR>"
        ),
        dashboard.button("s", " " .. " Open Session", "<cmd>SessionRestore<CR>"),
        dashboard.button(
          "c",
          " " .. " Config",
          "<cmd>cd C:\\Users\\m7mod\\AppData\\Local\\nvim | edit $MYVIMRC <cr>"
        ),
        dashboard.button("l", "󰒲 " .. " Lazy", "<cmd> Lazy <cr>"),
        dashboard.button("L", "󰒲 " .. " Lazy", "<cmd> Lazy <cr>"),
        dashboard.button("q", " " .. " Quit", "<cmd> qa <cr>"),
      }
      for _, button in ipairs(dashboard.section.buttons.val) do
        button.opts.hl = "AlphaButtons"
        button.opts.hl_shortcut = "AlphaShortcut"
      end
      dashboard.section.header.opts.hl = "AlphaHeader"
      dashboard.section.buttons.opts.hl = "AlphaButtons"
      dashboard.section.footer.opts.hl = "AlphaFooter"
      dashboard.opts.layout[1].val = 8
      return dashboard
    end,
    config = function(_, dashboard)
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "alpha",
        callback = function()
          vim.opt_local.showtabline = 0
        end,
      })
      vim.cmd("highlight AlphaHeader guifg=#d65d0e")
      vim.cmd("highlight AlphaButtons guifg=#ebdbb2") -- #fbf1c7
      vim.cmd("highlight AlphaFooter guifg=#b16286")
      if vim.o.filetype == "lazy" then
        vim.cmd.close()
        vim.api.nvim_create_autocmd("User", {
          once = true,
          pattern = "AlphaReady",
          callback = function()
            require("lazy").show()
          end,
        })
      end

      require("alpha").setup(dashboard.opts)
      vim.api.nvim_create_autocmd("User", {
        once = true,
        pattern = "LazyVimStarted",
        callback = function()
          local stats = require("lazy").stats()
          local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
          dashboard.section.footer.val = "⚡ Neovim loaded "
            .. stats.loaded
            .. "/"
            .. stats.count
            .. " plugins in "
            .. ms
            .. "ms"
          pcall(vim.cmd.AlphaRedraw)
        end,
      })
    end,
  },
}
