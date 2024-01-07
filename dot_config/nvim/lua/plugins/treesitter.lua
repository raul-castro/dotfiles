return {
  "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
  config = function()

    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = { "c", "cpp", "cmake", "lua", "vim", "vimdoc", "query", "elixir", "heex", "eex", "erlang", "javascript", "typescript", "html", "css", "ledger", "csv", "astro", "bash", "dockerfile", "git_config", "gitignore", "go", "graphql", "json", "java", "kdl", "latex", "make", "matlab", "markdown", "python", "regex", "rust", "svelte", "toml", "vue", "xml"},
      highlight = { enable = true },
      indent = { enable = true },
    })

  end
}
