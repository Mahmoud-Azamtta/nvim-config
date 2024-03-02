return {
  {
    "williamboman/mason.nvim",
    dependencies = {
      -- "neovim/nvim-lspconfig",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      local mason = require("mason")
      local mason_lspconfig = require("mason-lspconfig")
      --   local nvimLSP = require("lspconfig")
      mason.setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      })

      mason_lspconfig.setup({
        ensure_installed = {
          "tsserver",
          "html",
          "cssls",
          "tailwindcss",
          "lua_ls",
          "emmet_ls",
          "prismals",
          "pyright",
        },
      })
      --   nvimLSP.lua_ls.setup({})
      --   nvimLSP.tsserver.setup({})
      --   nvimLSP.tailwindcss.setup({})
      --   vim.keymap.set("n", "K", vim.lsp.buf.hover)
      --   vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      --   vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
  -- {
  --   config = function()
  --     local masonLSP = require("mason-lspconfig")
  --     masonLSP.setup({
  --       ensure_installed = { "lua_ls", "tsserver", "tailwindcss" },
  --     })
  --   end,
  -- },
  --  {
  --    "neovim/nvim-lspconfig",
  --    config = function()
  --      local nvimLSP = require("lspconfig")
  --      nvimLSP.lua_ls.setup({})
  --      nvimLSP.tsserver.setup({})
  --      nvimLSP.tailwindcss.setup({})
  --      vim.keymap.set("n", "K", vim.lsp.buf.hover)
  --      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
  --      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
  --    end,
  --  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    config = function()
      local mason_tool_installer = require("mason-tool-installer")
      mason_tool_installer.setup({
        ensure_installed = { "prettier", "stylua", "isort", "black", "pylint", "eslint_d" },
      })
    end,
  },
}
