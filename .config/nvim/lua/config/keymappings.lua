local keymap = vim.keymap

-- toggle nvim-tree
local tree_api = require "nvim-tree.api"
keymap.set({"n", "v", "i"}, "<C-N>", function() tree_api.tree.toggle() end, { desc = "nvim-tree: Toggle nvim-tree" })

-- toggle terminal
keymap.set({"n", "v", "i"}, "<C-T>", function() vim.cmd(":ToggleTerm") end, { desc = "terminal: Toggle Terminal"})

-- bufferline
keymap.set({"n", "v", "i"}, "<C-P>", function() vim.cmd(":BufferLinePick") end, { desc = "bufferline: BufferLine Pick" })
keymap.set({"n", "v", "i"}, "<C-O>", function() vim.cmd(":BufferLinePickClose") end, { desc = "bufferline: BufferLine Pick Close" })

