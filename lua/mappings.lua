require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>q", "<cmd>wqa<cr>", { silent = true })
map("n", "H", "^")
map("n", "L", "$")
map("n", "<leader>gg", "<cmd>LazyGit<cr>", { desc = "LazyGit", silent = true })
map("n", "<leader>sk", "<cmd>ShowkeysToggle<cr>", { desc = "ShowkeysToggle", silent = true })
-- menu keymap
map("n", "<RightMouse>", function()
  vim.cmd.exec '"normal! \\<RightMouse>"'

  local options = vim.bo.ft == "NvimTree" and "nvimtree" or "default"
  require("menu").open(options, { mouse = true })
end, {})
map("n", "<C-t>", function()
  require("menu").open "default"
end, {})
