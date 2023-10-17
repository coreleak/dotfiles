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
        "iamcco/markdown-preview.nvim",
        cmd = {
            "MarkdownPreviewToggle",
            "MarkdownPreview",
            "MarkdownPreviewStop"
        },
        ft = { "markdown" },
        build = function()
            vim.fn["mkdp#util#install"]()
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        opts = {
                ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "javascript", "html" },
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },
        },
        config = function(_, opts)
            require("nvim-treesitter.configs").setup(opts)
        end,
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
