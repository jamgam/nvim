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
if vim.fn.filereadable(".nvim.lua") == 1 then
  vim.cmd("source .nvim.lua")
elseif vim.fn.filereadable(".nvimrc") == 1 then
  vim.cmd("source .nvimrc")
end

vim.api.nvim_create_autocmd("BufEnter", {
  desc = "Format simple keymap",
  group = group,
  pattern = "*5x6/keymaps/jamgam/keymap.c", -- this is a pattern to match the filepath of whatever board you wish to target
  callback = function()
    require("qmk").setup({
      auto_format_pattern = nil,
      name = "LAYOUT_5x6",
      comment_preview = {},
      layout = {
        "x x x x x x _ _ _ _ _ x x x x x x",
        "x x x x x x _ _ _ _ _ x x x x x x",
        "x x x x x x _ _ _ _ _ x x x x x x",
        "x x x x x x _ _ _ _ _ x x x x x x",
        "_ _ x x _ _ _ _ _ _ _ _ _ x x _ _",
        "_ _ _ _ x x _ _ _ _ _ x x _ _ _ _",
        "_ _ _ _ x x _ _ _ _ _ x x _ _ _ _",
        "_ _ _ _ x x _ _ _ _ _ x x _ _ _ _",
      },
    })
  end,
})

vim.api.nvim_create_autocmd("BufEnter", {
  desc = "Format 4x6 keymap",
  group = group,
  pattern = "*4x6_3/keymaps/jamgam/keymap.c", -- this is a pattern to match the filepath of whatever board you wish to target
  callback = function()
    require("qmk").setup({
      auto_format_pattern = nil,
      name = "LAYOUT",
      comment_preview = {},
      layout = {
        "x x x x x x _ x x x x x x",
        "x x x x x x _ x x x x x x",
        "x x x x x x _ x x x x x x",
        "_ _ x x _ _ _ _ _ x x _ _",
        "_ _ _ x x x _ x x x _ _ _",
      },
    })
  end,
})
