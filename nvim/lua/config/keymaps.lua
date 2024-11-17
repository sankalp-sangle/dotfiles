-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jk", "<Esc>")

-- Leetcode plugin
vim.keymap.set("n", "<Space>lT", ":Leet test<CR>")
vim.keymap.set("n", "<Space>lS", ":Leet submit<CR>")
