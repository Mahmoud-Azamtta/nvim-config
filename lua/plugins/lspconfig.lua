return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "antosha417/nvim-lsp-file-operations", config = true },
  },
  config = function()
    local lspconfig = require("lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    local keymap = vim.keymap
    local opts = { noremap = true, silent = true }

    local on_attach = function(client, bufnr)
      opts.desc = "Show LSP references"
      keymap.set("n", "<leader>lr", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references

      opts.desc = "Go to declarations"
      keymap.set("n", "<leader>lD", vim.lsp.buf.declaration, opts) -- go to declarion

      opts.desc = "Show LSP definition"
      keymap.set("n", "<leader>ld", "<cmd>Telescope lsp_definitions<CR>", opts) -- show lsp definition

      opts.desc = "Show LSP impelementaitons"
      keymap.set("n", "<leader>li", "<cmd>Telescope lsp_implementations<CR>", opts) -- show lsp lsp impelementaitons

      opts.desc = "Show LSP type definition"
      keymap.set("n", "<leader>lt", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- show lsp type definitions

      opts.desc = "See available code actions"
      keymap.set({ "n", "v" }, "<leader>lc", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode only code actions for the selected part will appear

      opts.desc = "Smart rename"
      keymap.set("n", "<leader>ln", vim.lsp.buf.rename, opts) -- smart rename

      opts.desc = "Show buffer diagnostics"
      keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show diagnostics for file

      opts.desc = "Show line diagnostics"
      keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line

      opts.desc = "Go to previous diagnostic"
      keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer

      opts.desc = "Go to next diagnostic"
      keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer

      opts.desc = "Show documentation for what is under cursor"
      keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under the cursor

      opts.desc = "Restart LSP"
      keymap.set("n", "<leader>lR", ":LspRestart<CR>", opts) -- restart the lsp
    end

    local capabilities = cmp_nvim_lsp.default_capabilities()

    -- Change the Diagnostic symbol in the sign column (gutter)
    local signs = { Error = "", Warn = "", Hint = "", Info = "" }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end

    lspconfig["html"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig["tsserver"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig["tailwindcss"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig["emmet_ls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
    })

    lspconfig["pyright"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig["csharp_ls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig["lua_ls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            library = {
              [vim.fn.expand("$VIMRUNTIME/lua")] = false,
              [vim.fn.stdpath("config") .. "/lua"] = false,
            },
          },
        },
      },
    })
  end,
}
