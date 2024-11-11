-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
map("n", "<tab>", "<c-w>w", { desc = "Next Window" })
map("n", "<S-tab>", "<c-w>W", { desc = "Prev Window" })

-- avoid accidental page up/down
map("n", "<S-Up>", "k", { desc = "Up" })
map("n", "<S-Down>", "j", { desc = "Down" })
map("n", "<PageUp>", "k", { desc = "Up" })
map("n", "<PageDown>", "j", { desc = "Down" })
