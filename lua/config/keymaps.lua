-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local set = vim.keymap.set
local del = vim.keymap.del

set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
set("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
set("n", "<C-d>", "10j", { noremap = true, silent = true })
set("n", "<C-u>", "10k", { noremap = true, silent = true })
set("n", "<leader>ci", "")

-- buffers
set("n", "<A-w>", LazyVim.ui.bufremove, { noremap = true, silent = true })
set("n", "<S-Tab>", ":bprev<CR>", { noremap = true, silent = true })
set("n", "<Tab>", ":bnext<CR>", { noremap = true, silent = true })
set("n", "<A-s>", ":w<CR>", { noremap = true, silent = true })
set("n", "<A-1>", ":BufferLineGoToBuffer 1<CR>", { noremap = true, silent = true })
set("n", "<A-2>", ":BufferLineGoToBuffer 2<CR>", { noremap = true, silent = true })
set("n", "<A-3>", ":BufferLineGoToBuffer 3<CR>", { noremap = true, silent = true })
set("n", "<A-4>", ":BufferLineGoToBuffer 4<CR>", { noremap = true, silent = true })
set("n", "<A-5>", ":BufferLineGoToBuffer 5<CR>", { noremap = true, silent = true })
set("n", "<A-6>", ":BufferLineGoToBuffer 6<CR>", { noremap = true, silent = true })
set("n", "<A-7>", ":BufferLineGoToBuffer 7<CR>", { noremap = true, silent = true })
set("n", "<A-8>", ":BufferLineGoToBuffer 8<CR>", { noremap = true, silent = true })
set("n", "<A-9>", ":BufferLineGoToBuffer 9<CR>", { noremap = true, silent = true })
