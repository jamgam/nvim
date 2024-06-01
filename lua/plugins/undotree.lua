return {
  "mbbill/undotree",
  keys = { {
    "<leader>fu",
    "<cmd>UndotreeShow<cr>",
    { desc = "UndoTree Shows", silent = true },
  } },
  config = function()
    vim.g.undotree_WindowLayout = 4
  end,
}
