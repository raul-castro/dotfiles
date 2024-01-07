return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls", "tsserver", "clangd", "awk_ls", "astro", "bashls", "cssls", "dockerls", "elixirls", "elp", "gopls", "html", "htmx", "jdtls", "ltex", "matlab_ls", "pyright", "sqls", "svelte", "taplo", "tailwindcss"}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.clangd.setup({})
      lspconfig.awk_ls.setup({})
      lspconfig.astro.setup({})
      lspconfig.bashls.setup({})
      lspconfig.cssls.setup({})
      lspconfig.dockerls.setup({})
      lspconfig.elixirls.setup({})
      lspconfig.elp.setup({})
      lspconfig.gopls.setup({})
      lspconfig.html.setup({})
      lspconfig.htmx.setup({})
      lspconfig.jdtls.setup({})
      lspconfig.ltex.setup({})
      lspconfig.matlab_ls.setup({})
      lspconfig.pyright.setup({})
      lspconfig.sqls.setup({})
      lspconfig.svelte.setup({})
      lspconfig.taplo.setup({})
      lspconfig.tailwindcss.setup({})




      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})


    end

  }
}

