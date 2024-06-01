return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      show_buffer_close_icons = false,
      show_close_icon = false,
    },
  },
  config = function(_, opts)
    require("bufferline").setup(opts)
    local set = vim.keymap.set
    set("n", "<A-1>", "<cmd>BufferLineGoToBuffer 1<CR>")
    set("n", "<A-2>", "<cmd>BufferLineGoToBuffer 2<CR>")
    set("n", "<A-3>", "<cmd>BufferLineGoToBuffer 3<CR>")
    set("n", "<A-4>", "<cmd>BufferLineGoToBuffer 4<CR>")
    set("n", "<A-5>", "<cmd>BufferLineGoToBuffer 5<CR>")
    set("n", "<A-6>", "<cmd>BufferLineGoToBuffer 6<CR>")
    set("n", "<A-7>", "<cmd>BufferLineGoToBuffer 7<CR>")
    set("n", "<A-8>", "<cmd>BufferLineGoToBuffer 8<CR>")
    set("n", "<A-9>", "<cmd>BufferLineGoToBuffer 9<CR>")
  end,
}
