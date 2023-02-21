return require("packer").startup({
    function(use)
        -- General Plugins
        use "wbthomason/packer.nvim" -- Packer can manage itself
        use "Mofiqul/dracula.nvim" -- Theme
        use "tpope/vim-fugitive" -- Git commands
        -- use { 'dracula/vim' }
        use { "johnfrankmorgan/whitespace.nvim" }
        use { "kyazdani42/nvim-web-devicons" } -- requirements from other plugins
        use { "nvim-lualine/lualine.nvim" } -- https://github.com/nvim-lualine/lualine.nvim: status line
        use { "nvim-lua/plenary.nvim" } -- requirements from other plugins
        use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- better syntax highlighting
        use { "p00f/nvim-ts-rainbow" } -- Rainbow parens
        use { 'kyazdani42/nvim-tree.lua' } -- equivalent to NerdTree
        use { 'nvim-telescope/telescope.nvim' } -- searching files/grep
        use { 'lewis6991/gitsigns.nvim' } -- showing commits within files/etc
        use { 'ggandor/lightspeed.nvim' } -- using s and S to search and move

        -- LSP Config
        use { 'neovim/nvim-lspconfig' } -- LSP
        use { "saadparwaiz1/cmp_luasnip" }
        use { "hrsh7th/cmp-buffer" }
        use { "hrsh7th/cmp-nvim-lsp" }
        use { "hrsh7th/cmp-path" }
        use { "hrsh7th/cmp-cmdline" }
        use { "hrsh7th/nvim-cmp" }
        use { 'hrsh7th/cmp-nvim-lua' } -- Lua Autocompletion
        use { 'nvim-telescope/telescope-ui-select.nvim' } -- used for code actions with default nvim-lsp
        use { 'filipdutescu/renamer.nvim' } -- rename stuff quickly
        use { 'akinsho/flutter-tools.nvim' } -- LSP for Flutter
        use { 'f-person/pubspec-assist-nvim' } -- Install pubspec dependencies
        use { 'folke/trouble.nvim' } --show list of diagnostics
        use { "williamboman/mason.nvim" } -- install LSP servers easily
        use { "onsails/lspkind.nvim" }
        -- Snippets
        use { 'L3MON4D3/LuaSnip' }
        use { 'Neevash/awesome-flutter-snippets' }
        use { 'rafamadriz/friendly-snippets' }

        -- Debugging
        use { 'mfussenegger/nvim-dap' } -- Debugging plug in (set up breakpoints etc)
        use { 'kosayoda/nvim-lightbulb' } -- add lightbulb if there is a code suggestion
        use { 'rcarriga/nvim-dap-ui' }
        use { 'theHamsta/nvim-dap-virtual-text' }
        use { 'nvim-telescope/telescope-dap.nvim' }

        -- Nice Features
        use { 'norcalli/nvim-colorizer.lua' } -- Automatically highlight colors
        use { 'windwp/nvim-autopairs' } -- Pair closing for brackets
        use { 'tpope/vim-surround' } -- To easily enclose stuff in parens and quotes
        use { "lukas-reineke/indent-blankline.nvim" } -- Indentation guides on all lines
        use { 'folke/todo-comments.nvim' } -- highlight todo comments
        use { 'wakatime/vim-wakatime' } -- Tracking my devel time
        use { 'akinsho/toggleterm.nvim' } -- a nice terminal
        use { "ellisonleao/glow.nvim" } -- preview markdown files in nvim
        use { "mg979/vim-visual-multi" } -- multicursor support
        use { "jbyuki/venn.nvim" } -- diagramos (have not really used it)
        use { 'mvllow/modes.nvim' } -- highlight current line with mode color
        use { 'numToStr/Comment.nvim' } -- comment text with gc
        use { 'dhruvasagar/vim-table-mode' } -- markdown tables made easy
        use { 'nvim-treesitter/nvim-treesitter-textobjects' } -- Allow me to select functions, etc with keymaps
        use { 'anuvyklack/hydra.nvim', -- this package is to use same keybinding for different things
            requires = 'anuvyklack/keymap-layer.nvim' -- needed only for pink hydras
        }
        use '/home/sollymay/Documents/coding/lua/nvim-todoist.lua'
    end,
    config = {
        display = {
            open_fn = function()
                return require('packer.util').float({ border = 'rounded' })
            end
        }
    }
}
)
