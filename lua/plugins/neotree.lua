return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    { "\\", ":Neotree reveal<CR>", { desc = "NeoTree reveal", silent = true } },
  },
  opts = {
    window = {
      position = "right",
    },
    filesystem = {
      window = {
        mappings = {
          ["\\"] = "close_window",
          ["<Esc>"] = "close_window",
        },
      },
    },
  },
}
