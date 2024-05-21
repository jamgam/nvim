return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    { "<leader>\\", ":Neotree reveal<CR>", { desc = "NeoTree reveal", silent = true } },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ["<leader>\\"] = "close_window",
          ["<Esc>"] = "close_window",
        },
      },
    },
  },
}
