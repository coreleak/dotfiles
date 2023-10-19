local M = {}

require("toggleterm").setup{
    direction = "horizontal",

    on_open = function(term)
        return M.handle_nvimtree_compatibility(term)
    end,
}

function M.handle_nvimtree_compatibility(terminal)
    local api = require "nvim-tree.api"
    local tree_view = require "nvim-tree.view"

    if tree_view.is_visible() and terminal.direction == "horizontal" then
        local width = vim.fn.winwidth(tree_view.get_winnr())
        api.tree.toggle()
        tree_view.View.width = width
        api.tree.toggle(false, true)
    end
end
