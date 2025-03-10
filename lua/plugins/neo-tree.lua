return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    { "\\", "<cmd>Neotree reveal<cr>", { desc = "NeoTree reveal", silent = true } },
    { "<leader>fe>", false },
    { "<leader>fE>", false },
  },
  opts = {
    event_handlers = {

      {
        event = "file_open_requested",
        handler = function()
          vim.cmd("Neotree close")
        end,
      },
    },
    filesystem = {
      hijack_netrw_behavior = false,
      window = {
        mappings = {
          ["\\"] = "close_window",
        },
      },
    },
  },
}
