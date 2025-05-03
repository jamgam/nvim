return {
  "mikavilpas/yazi.nvim",
  event = "VeryLazy",
  dependencies = {
    "folke/snacks.nvim",
  },
  keys = {
    {
      "\\",
      mode = { "n", "v" },
      "<cmd>Yazi<CR>",
      desc = "Open yazi at the current file",
    },
  },
  opts = {
    open_for_directories = true,
    keymaps = {
      show_help = "<f1>",
      open_file_in_vertical_split = "|",
    },
  },
  init = function()
    vim.g.loaded_netrwPlugin = 1
  end,
}
