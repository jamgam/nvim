return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    { "\\", "<cmd>Neotree reveal<cr>", { desc = "NeoTree reveal", silent = true } },
    { "<leader>fe>", false },
    { "<leader>fE>", false },
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
