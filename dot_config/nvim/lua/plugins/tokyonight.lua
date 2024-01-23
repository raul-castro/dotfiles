return {
  "folke/tokyonight.nvim",
  transparent = true,
  lazy = false,
  priority = 1000,
  opts = {
    style = 'night',
    transparent = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
  },
  config = function()
    vim.cmd.colorscheme "tokyonight-night"
  end
}
