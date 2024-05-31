return {
  "ibhagwan/fzf-lua",
  event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("fzf-lua").setup({
      vim.keymap.set("n", "<leader>fp", "<cmd>lua require('fzf-lua').builtin()<CR>"),
    })
  end,
}
