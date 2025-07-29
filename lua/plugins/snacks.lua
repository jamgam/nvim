return {
  "folke/snacks.nvim",
  keys = {
    {
      "<leader>.",
      function()
        Snacks.picker.smart()
      end,
      desc = "Smart Find Files",
    },
  },
  opts = {
    picker = {
      win = {
        input = {
          keys = {
            ["<c-s>"] = { "edit_vsplit", mode = { "i", "n" } },
          },
        },
      },
      list = {
        keys = {
          ["<c-s>"] = "edit_vsplit",
        },
      },
    },
  },
}
