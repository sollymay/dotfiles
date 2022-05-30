return require('packer').startup({function()
  use 'wbthomason/packer.nvim'  -- Packer can manage itself
  use 'tpope/vim-fugitive' -- Git commands
  use 'bronson/vim-trailing-whitespace' -- highlight trailing spaces
  use 'kyazdani42/nvim-web-devicons' -- requirements from other plugins
  use {'dracula/vim', as = 'dracula'} -- theme
  use {'nvim-lualine/lualine.nvim'} -- https://github.com/nvim-lualine/lualine.nvim
  use {'nvim-lua/plenary.nvim'} -- requirements from other plugins
-- maybe need to change theme in config
-- this is like vim-startify
  use {'goolord/alpha-nvim', config = function ()
          require'alpha.themes.dashboard'.section.footer.val = require'alpha.fortune'()
          require'alpha'.setup(require'alpha.themes.dashboard'.opts) end}
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'} -- better syntax highlighting
  use {'p00f/nvim-ts-rainbow'}
  use {'kyazdani42/nvim-tree.lua'}  -- equivalent to NerdTree
  use {'nvim-telescope/telescope.nvim'} -- searching files/grep
  use {'lewis6991/gitsigns.nvim'} -- showing commits within files/etc
  use {'ggandor/lightspeed.nvim'}

-- LSP Config
  use {'neovim/nvim-lspconfig'} -- LSP
  use {"saadparwaiz1/cmp_luasnip"}
  use {"hrsh7th/cmp-buffer"}
  use {"hrsh7th/cmp-nvim-lsp"}
  use {"hrsh7th/cmp-path"}
  use {"hrsh7th/cmp-cmdline"}
  use { "hrsh7th/nvim-cmp"}
  use {'hrsh7th/cmp-nvim-lua'} -- Lua Autocompletion
  use {'tami5/lspsaga.nvim'} -- LSP cooler Autocompletion
  use {'akinsho/flutter-tools.nvim'} -- LSP for Flutter
  use {'folke/trouble.nvim'} --show list of diagnostics

-- Snippets
  use {'L3MON4D3/LuaSnip'}
  use {'Neevash/awesome-flutter-snippets'}
  use {'rafamadriz/friendly-snippets'}

-- Debugging
  use {'mfussenegger/nvim-dap'} -- Debugging plug in (set up breakpoints etc)
  use {'kosayoda/nvim-lightbulb'} -- add lightbulb if there is a code suggestion

-- Nice Features
  use {'norcalli/nvim-colorizer.lua'} -- Automatically highlight colors
  use {'windwp/nvim-autopairs'} -- Pair closing for brackets
  use {'tpope/vim-surround'}
  use {'folke/which-key.nvim'}
  use {"lukas-reineke/indent-blankline.nvim"} -- Indentation guides on all lines
  use {'folke/todo-comments.nvim'}
  use {'wakatime/vim-wakatime'}
  -- use {'numToStr/FTerm.nvim'}
  use {'akinsho/toggleterm.nvim'}
  use {"ellisonleao/glow.nvim"}
  use {"mg979/vim-visual-multi"}
  use {"jbyuki/venn.nvim"}
  use {'mvllow/modes.nvim'}
  -- use {'numToStr/Comment.nvim',
  --      tag = 'v0.6',
  -- }
  use {'numToStr/Comment.nvim'}
  use {'nvim-treesitter/nvim-treesitter-textobjects'} -- Allow me to select functions, etc with keymaps
end,
config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'rounded' })
    end
  }
}}
)
