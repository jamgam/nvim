return {
  "mbbill/undotree",
  keys = { {
    "<leader>fu",
    "<cmd>UndotreeToggle<cr>",
    { desc = "UndoTree Toggle", silent = true },
  } },
  config = function()
    vim.g.undotree_WindowLayout = 4
    vim.g.undotree_SetFocusWhenToggle = 1
    vim.g.undotree_ShortIndicators = 1
  end,
}
