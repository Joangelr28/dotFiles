-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap -- for conciseness

-- save files
keymap.set("n", "<D-s>", ":wa<CR>", { noremap = true })
keymap.set("i", "<D-s>", "<Esc>:wa<CR>a", { noremap = true })

-- developer
keymap.set("n", "<leader>d", ":vsplit | lua vim.lsp.buf.definition()<CR>")
