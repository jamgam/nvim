return {
  "folke/snacks.nvim",
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
