return {
  "echasnovski/mini.files",
  opts = {
    windows = {
      width_preview = 60,
    },
    mappings = {
      close = "\\",
      go_in = "<Right>",
      go_in_plus = "<CR>",
      go_out = "<Left>",
      go_out_plus = "<S-Left>",
      reset = "<BS>",
      reveal_cwd = "@",
      show_help = "g?",
      synchronize = "=",
      trim_left = "<",
      trim_right = ">",
    },
  },
  keys = {
    {
      "\\",
      function()
        require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
      end,
      desc = "Open mini.files (Directory of Current File)",
    },
    {
      "|",
      function()
        require("mini.files").open(vim.uv.cwd(), true)
      end,
      desc = "Open mini.files (cwd)",
    },
  },
}
