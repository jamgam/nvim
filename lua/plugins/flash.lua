return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {
    labels = "arstneiozxcdh,./qwfpluy;bgvjmk",
  },
  keys = {
    {
      "s",
      mode = { "n", "x", "o" },
      function()
        require("flash").jump()
      end,
      desc = "Flash",
    },
    {
      "r",
      mode = "o",
      function()
        require("flash").remote()
      end,
      desc = "Remote Flash",
    },
  },
}
