-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.VM_leader = "<leader>\\"
vim.g.have_nerd_font = true
vim.g.minipairs_disable = true

opt.clipboard = "unnamedplus"
opt.scrolloff = 10
opt.sidescrolloff = 0
opt.wrap = true
-- opt.formatoptions = "jnql" -- tcqj
