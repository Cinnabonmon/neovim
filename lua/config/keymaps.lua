-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Add empty line below without moving cursor
vim.keymap.set("n", "<leader>o", "m`o<Esc>``", { desc = "Add line below" })

-- Add empty line above without moving cursor
vim.keymap.set("n", "<leader>O", "m`O<Esc>``", { desc = "Add line above" })

--Tailwind Fold
-- add a keymap to toggle
vim.keymap.set("n", "<leader>ct", "<cmd>TailwindFoldToggle<CR>", { desc = "Toggle Tailwind Fold" })
