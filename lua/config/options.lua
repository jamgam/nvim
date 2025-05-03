-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.filetype.add({ extension = { templ = "templ" } })

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.VM_leader = "<leader>\\"
vim.g.have_nerd_font = true
vim.g.minipairs_disable = true

vim.opt.clipboard = ""
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 0
vim.opt.wrap = true
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2

vim.g.snacks_animate = false

-- If your using nvim on wsl2 env.
if vim.fn.has("wsl") > 0 then
  vim.cmd([[
    let g:clipboard = {
            \   'name': 'WslClipboard',
            \   'copy': {
            \      '+': 'clip.exe',
            \      '*': 'clip.exe',
            \    },
            \   'paste': {
            \      '+': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
            \      '*': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
            \   },
            \   'cache_enabled': 0,
            \ }
    ]])
end
