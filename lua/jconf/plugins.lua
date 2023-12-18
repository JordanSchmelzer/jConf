print("hello from plugins.lua")

require("lazy").setup({
    'nvim-treesitter/nvim-treesitter',
    'nvim-lua/plenary.nvim',
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5', 
        dependencies = {{'nvim-lua/plenary.nvim'}}
    },
    {
        'ThePrimeagen/harpoon',
        branch = 'harpoon2',
        dependencies = {{'nvim-lua/plenary.nvim'}}
    },
    'tpope/vim-fugitive',
    
    --COLORS
    {
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
     },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    'mbbill/undotree',
    --FileTreeStuff 
    'nvim-tree/nvim-tree.lua',
    --'nvim-tree/nvim-web-devicons',
    --DAP (debug)
    {'mfussenegger/nvim-dap'},
    {
        'mfussenegger/nvim-dap-ui',
        dependencies = {{'mfussenegger/nvim-dap'}}
    },

    --Completion
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-path'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-cmdline'},
    --Snippets
    {},
    {'L3MON4D3/LuaSnip',
    --follow latest release.
    version = "v2.1.1", --Replace current major by latest released major
    --install jsregexp (optional)
    build = "make install_jsregexp"
    },

    {
        'neovim/nvim-lspconfig',
        
    },
    {'williamboman/mason.nvim',
      opts = {
          ensure_installed = {
                "pyright",
             },
        },
    },
    {'williamboman/mason-lspconfig.nvim'},
})
