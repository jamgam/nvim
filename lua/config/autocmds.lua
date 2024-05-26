-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd({ "BufLeave" }, {
  callback = function()
    if vim.bo.modified and not vim.bo.readonly then
      vim.cmd("silent! write")
    end
  end,
})
