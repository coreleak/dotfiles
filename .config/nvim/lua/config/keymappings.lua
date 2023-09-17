local keymap = vim.keymap

-- toggle nvim-tree
local tree_api = require "nvim-tree.api"
keymap.set({"n", "v", "i"}, "<C-N>", function() tree_api.tree.toggle() end)

-- toggle terminal
keymap.set({"n", "v", "i"}, "<C-T>", function() vim.cmd(":ToggleTerm") end)
