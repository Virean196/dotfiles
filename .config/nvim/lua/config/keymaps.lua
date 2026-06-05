-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = vim.keymap.set

-- Easy buffer switching
map("n", "<Tab>", "]b", { remap = true, desc = "Next buffer" })
map("n", "<S-Tab>", "[b", { remap = true, desc = "Previous buffer" })

-- Paragraph jumping with Ctrl+Up/Down instead of {}
map("n", "<C-Up>", "{", { desc = "Previous paragraph" })
map("n", "<C-Down>", "}", { desc = "Next paragraph" })

-- Also fix in visual mode
map("v", "<gt>", "]", { remap = true, desc = "which_key_ignore" })
map("v", "<lt>", "[", { remap = true, desc = "which_key_ignore" })
map("v", "<Tab>", "]b", { remap = true, desc = "Next buffer" })
map("v", "<S-Tab>", "[b", { remap = true, desc = "Previous buffer" })
