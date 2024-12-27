return {
  "sainnhe/sonokai",
  { "folke/tokyonight.nvim", lazy = false, opts = { style = "storm" } },
  { "catppuccin/nvim", name = "catppuccin" },
  { "ellisonleao/gruvbox.nvim", priority = 1000, config = true },
  {
    "0xstepit/flow.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      theme = {
        style = "dark", -- "dark" or "light"
        contrast = "default", -- "default" or "high"
        transparent = false,
      },
      colors = {
        mode = "default",
        fluo = "yellow", -- "pink", "cyan", "yellow", "orange", "green"
      },
      ui = {
        borders = "inverse", -- "theme", "inverse", "fluo", "none"
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "gruvbox",
      -- colorscheme = "catppuccin-frappe",
      colorscheme = "flow",
      -- backgrouud = "dark",
    },
  },
}
