return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "tsserver",
          "clangd",
          "astro",
          "bashls",
          "cssls",
          "dockerls",
          "elixirls",
          "elp",
          "html",
          "jdtls",
          "ltex",
          "matlab_ls",
          "pyright",
          "sqlls",
          "svelte",
          "taplo",
          "tailwindcss",
          "rust_analyzer",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.tsserver.setup({})
      lspconfig.clangd.setup({})
      lspconfig.astro.setup({})
      lspconfig.bashls.setup({})
      lspconfig.cssls.setup({})
      lspconfig.dockerls.setup({})
      lspconfig.elixirls.setup({})
      lspconfig.elp.setup({})
      lspconfig.html.setup({})
      lspconfig.jdtls.setup({})
      lspconfig.ltex.setup({})
      lspconfig.matlab_ls.setup({})
      lspconfig.pyright.setup({})
      lspconfig.svelte.setup({})
      lspconfig.taplo.setup({})
      lspconfig.tailwindcss.setup({})
      lspconfig.rust_analyzer.setup({})
      lspconfig.sqlls.setup({})

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
