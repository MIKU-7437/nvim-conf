return {
    { 
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
    },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    { "theprimeagen/harpoon", name = "harpoon" },
    { "nvim-treesitter/nvim-treesitter" , build = ":TSUpdate"},
    { "mbbill/undotree" },
    { "tpope/vim-fugitive" },
    -- lsp config
    { "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim"
        }
    },
        -- autocomplete
    { "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip"
        }
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    },
}
