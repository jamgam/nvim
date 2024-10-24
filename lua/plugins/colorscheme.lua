return {
  { "folke/tokyonight.nvim", lazy = false, opts = { style = "storm" } },
  { "catppuccin/nvim", name = "catppuccin" },
  { "ellisonleao/gruvbox.nvim", priority = 1000, config = true },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-frappe",
      -- colorscheme = "gruvbox",
    },
  },
}
