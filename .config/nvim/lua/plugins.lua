return {
    -- General Plugins
    { 'Mofiqul/dracula.nvim' },
    { 'tpope/vim-fugitive' }, -- Git commands
    { 'christoomey/vim-tmux-navigator' },
    {
        'ldelossa/gh.nvim',
        dependencies = { 'ldelossa/litee.nvim' },
        config = function()
            require('litee.lib').setup()
            require('litee.gh').setup()
        end
    },
    { 'kyazdani42/nvim-web-devicons' }, -- requirements from other plugins
    { 'nvim-lua/plenary.nvim' }, -- requirements from other plugins
    {
        'rest-nvim/rest.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('rest-nvim').setup({
                result_split_horizontal = true,
            })
        end
    }, -- Rest testing inside nvim
    {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    },
    { 'nvim-telescope/telescope.nvim' }, -- Probably best search out there
    { 'nvim-tree/nvim-tree.lua' }, -- Working tree
    { 'p00f/nvim-ts-rainbow' }, -- Rainbow parens
    { 'fedepujol/move.nvim' },
    {
        'folke/noice.nvim',
        config = function()
            require('noice').setup({
                -- add any options here
            })
        end,
        dependencies = {
            -- if you lazy-load any plugin below, make sure to add proper `module='...'` entries
            'MunifTanjim/nui.nvim',
            'rcarriga/nvim-notify',
        }
    },
    {
        'ggandor/leap.nvim',
        config = function()
            require('leap').add_default_mappings()
        end
    },
    -- LSP Config
    { 'neovim/nvim-lspconfig' }, -- LSP
    { 'saadparwaiz1/cmp_luasnip' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-cmdline' },
    { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-nvim-lua' }, -- Lua Autocompletion
    { 'nvim-telescope/telescope-ui-select.nvim' }, -- used for code actions with default nvim-lsp
    {
        'filipdutescu/renamer.nvim',
        config = function()
            require('renamer').setup({})
        end
    }, -- rename stuff quickly
    { 'akinsho/flutter-tools.nvim' }, -- LSP for Flutter
    { 'f-person/pubspec-assist-nvim' }, -- Install pubspec dependencies
    { 'folke/trouble.nvim' }, --show list of diagnostics
    { 'williamboman/mason.nvim' }, -- install LSP servers easily
    { 'onsails/lspkind.nvim' },

    -- Snippets
    { 'L3MON4D3/LuaSnip' },
    { 'Neevash/awesome-flutter-snippets' },
    { 'rafamadriz/friendly-snippets' },

    -- Debugging
    { 'mfussenegger/nvim-dap' }, -- Debugging plug in (set up breakpoints etc)
    { 'kosayoda/nvim-lightbulb' }, -- add lightbulb if there is a code suggestion
    { 'rcarriga/nvim-dap-ui' },
    { 'theHamsta/nvim-dap-virtual-text' },
    { 'nvim-telescope/telescope-dap.nvim' },

    -- Nice Features
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    }, -- To easily enclose stuff in parens and quotes

    { 'wakatime/vim-wakatime' }, -- Tracking my devel ti““““
    { 'mg979/vim-visual-multi' }, -- multicursor support
    { 'jbyuki/venn.nvim' }, -- diagramos (have not really used it)
    { 'dhruvasagar/vim-table-mode' }, -- markdown tables made easy
    { 'nvim-treesitter/nvim-treesitter-textobjects' }, -- Allow me to select functions, etc with keymaps
    {
        'anuvyklack/hydra.nvim', -- this package is to use same keybinding for different things
        dependencies = 'anuvyklack/keymap-layer.nvim' -- needed only for pink hydras
    },
    {
        'arakkkkk/kanban.nvim',
        dependencies = 'nvim-telescope/telescope.nvim',
        config = function()
            require('kanban').setup({})
        end
    },
}
