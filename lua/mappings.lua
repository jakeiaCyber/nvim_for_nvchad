require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>q", ":wqa<CR>", { silent = true })
map("n", "H", "^")
map("n", "L", "$")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
