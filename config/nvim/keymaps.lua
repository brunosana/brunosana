-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "<leader>gx", function()
	vim.cmd("Blame")
	vim.defer_fn(function()
		vim.cmd("wincmd h")
	end, 100)
end, { desc = "Toggle git blame and move left" })
