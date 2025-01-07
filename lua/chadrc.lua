-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}
M.base46 = {
  theme = "github_light",
  hl_override = {
    -- Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
  -- transparency = true,
}

M.ui = {
  cmp = {
    icons_left = true, -- only for non-atom styles!
    style = "default", -- default/flat_light/flat_dark/atom/atom_colored
  },
  -- lazyload it when there are 1+ buffers
  tabufline = {
    enabled = true,
    lazyload = true,
    order = { "treeOffset", "buffers", "tabs", "btns" },
    modules = nil,
  },
  statusline = {
    theme = "default", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "default",
  },
}
M.nvdash = {
  load_on_startup = true,
}
M.lsp = {
  signature = false,
}
M.term = {
  winopts = { winfixbuf = true },
}
return M
