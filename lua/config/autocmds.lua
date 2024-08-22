-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
-- vim.api.nvim_create_autocmd({ "BufLeave" }, {
--   callback = function()
--     if vim.bo.modified and not vim.bo.readonly then
--       vim.cmd("silent! write")
--     end
--   end,
-- })

-- vim.api.nvim_create_autocmd("FileType", {
--   callback = function()
--     vim.opt.formatoptions:remove({ "c", "r", "o" })
--   end,
--   desc = "Disable New Line Comment",
-- })
--
--
if vim.fn.filereadable(".nvim.lua") == 1 then
  vim.cmd("source .nvim.lua")
elseif vim.fn.filereadable(".nvimrc") == 1 then
  vim.cmd("source .nvimrc")
end
