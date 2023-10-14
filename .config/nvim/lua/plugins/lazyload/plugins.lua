return {
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require "plugins.nvim-tree"
        end,
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        event = "VeryLazy",
        main = "ibl",
        dependencies = {
            "nvim-treesitter/nvim-treesitter"
        },
        config = function()
            require "plugins.indent-blankline"
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        event = "VimEnter",
        config = function()
            require "plugins.lualine"
        end,
    },
    {
        "akinsho/bufferline.nvim",
        branch = "main",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require "plugins.bufferline"
        end,
    },
    {
        "akinsho/toggleterm.nvim",
        branch = "main",
        config = function()
            require "plugins.toggleterm"
        end,
    },
    {
        "lewis6991/gitsigns.nvim",
        event = "User FileOpened",
        init = function()
            require("gitsigns").setup()
        end,
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {},
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    },
    {
        "nvim-tree/nvim-web-devicons",
        lazy = true,
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false,
        priority = 1000,
        config = function()
            require "plugins.catppuccin"
        end,
    },
}
