-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local set = vim.keymap.set
local del = vim.keymap.del -- unmap, used to override default keymaps set by lazyvim

del("t", "<esc><esc>")

-- vertical movement
set("n", "<C-d>", "15j", { desc = "Move down 15 lines" })
set("n", "<C-u>", "15k", { desc = "Move up 15 lines" })

-- move lines
set("n", "<A-Down>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
set("n", "<A-Up>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
set("i", "<A-Down>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
set("i", "<A-Up>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
set("v", "<A-Down>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
set("v", "<A-Up>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })
set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

-- move intuitive search word under cursor
set("n", "*", "*N", { desc = "Search word under cursor staying on word", remap = true })

-- buffers
set("n", "<A-w>", LazyVim.ui.bufremove)
set("n", "<leader>wq", LazyVim.ui.bufremove)
set("n", "<S-Tab>", ":bprev<CR>", { noremap = true, silent = true })
set("n", "<Tab>", ":bnext<CR>", { noremap = true, silent = true })
set("n", "<A-s>", ":w<CR>", { noremap = true, silent = true })
set("n", "<A-1>", "<cmd>BufferLineGoToBuffer 1<CR>")
set("n", "<A-2>", "<cmd>BufferLineGoToBuffer 2<CR>")
set("n", "<A-3>", "<cmd>BufferLineGoToBuffer 3<CR>")
set("n", "<A-4>", "<cmd>BufferLineGoToBuffer 4<CR>")
set("n", "<A-5>", "<cmd>BufferLineGoToBuffer 5<CR>")
set("n", "<A-6>", "<cmd>BufferLineGoToBuffer 6<CR>")
set("n", "<A-7>", "<cmd>BufferLineGoToBuffer 7<CR>")
set("n", "<A-8>", "<cmd>BufferLineGoToBuffer 8<CR>")
set("n", "<A-9>", "<cmd>BufferLineGoToBuffer 9<CR>")

-- easy commenting
set("n", "<A-/>", "gcc", { remap = true })
set("v", "<A-/>", "gc", { remap = true })

-- override shift + arrow keys
set("", "<S-Down>", "<Down>")
set("", "<S-Up>", "<Up>")
set("", "<S-Left>", "<Left>")
set("", "<S-Right>", "<Right>")

-- move to window using arrow keys
set("n", "<C-Left>", "<C-w>h", { desc = "Go to Left Window", remap = true })
set("n", "<C-Down>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
set("n", "<C-Up>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
set("n", "<C-Right>", "<C-w>l", { desc = "Go to Right Window", remap = true })
set("n", "<leader>w<Left>", "<C-w>h", { desc = "Go to Left Window", remap = true })
set("n", "<leader>w<Down>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
set("n", "<leader>w<Up>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
set("n", "<leader>w<Right>", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- resize window using <ctrl> hjkl
set("n", "<C-k>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
set("n", "<C-j>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
set("n", "<C-h>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
set("n", "<C-l>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })
-- replace
set("v", "<leader>rr", ':s/<c-r>"//g<Left><Left>', { desc = "Replace" })
