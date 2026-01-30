-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, slient = true }

keymap.del("n", "<leader>l")
keymap.del("n", "H")
keymap.del("n", "L")

keymap.del({ "n", "i" }, "<A-j>")
keymap.del({ "n", "i" }, "<A-k>")

-- keymap.del({ "n", "x" }, "<Up>")
-- keymap.del({ "n", "x" }, "<Down>")

-- oil
keymap.set("n", "<leader>e", function()
  require("oil").toggle_float()
end, { desc = "Toggle Explorer oil" })
