return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    { "\\", "<cmd>Neotree reveal<cr>", { desc = "NeoTree reveal", silent = true } },
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
