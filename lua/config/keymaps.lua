-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>/", "<cmd>ToggleTerm size=40 dir=. direction=horizontal name=desktop<cr>")
vim.keymap.set("n", "<C-b>", "<cmd>Neotree toggle=true<cr>")
