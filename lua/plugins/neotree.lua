return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    { "\\", ":Neotree reveal<CR>", { desc = "NeoTree reveal", silent = true } },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ["\\"] = "close_window",
        },
      },
    },
  },
}
