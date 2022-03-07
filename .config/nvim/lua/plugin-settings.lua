-- Configuration of all the Plugins I use in nvim

-- Dracula theme
vim.cmd[[colorscheme dracula]]

-- telescope configuration:
require('telescope').load_extension('flutter')
-- Lua line aka statusbar and mode
require('lualine').setup {
  options = {
    theme = 'dracula'
  }
}

-- NerdTree alternative
local tree_cb = require'nvim-tree.config'.nvim_tree_callback
vim.g.view_mappings_list = {
     ["<C-.>"] = tree_cb("edit_in_place"),
}
require('nvim-tree').setup {
auto_close = true,
open_on_setup = true,
view = {
    width = 50,
    number = true,
    relativenumber = true,
},
git = {
    ignore = false,
},
actions = {
        open_file = {
            quit_on_open = true
        },
        change_dir = {
            enable = false,
        },
    }
}

-- nvim-treesiter config
require('nvim-treesitter.configs').setup{
highlight = {
  enable = true,
},
indent = {
  enable = true,
},
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  }
}

require('colorizer').setup{
        DEFAULT_OPTIONS = {
	RGB      = true;         -- #RGB hex codes
	RRGGBB   = true;         -- #RRGGBB hex codes
	names    = true;         -- "Name" codes like Blue
	RRGGBBAA = true;        -- #RRGGBBAA hex codes
	rgb_fn   = true;        -- CSS rgb() and rgba() functions
	hsl_fn   = true;        -- CSS hsl() and hsla() functions
	css      = true;        -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
	css_fn   = true;        -- Enable all CSS *functions*: rgb_fn, hsl_fn
	-- Available modes: foreground, background
	mode     = 'background'; -- Set the display mode.
  }
}
require('nvim-autopairs').setup{}
require('which-key').setup{}

-- Plugins with standalone config files
require('lsp-config')
require('cmp-config')
require('nvim-treesitter.configs').setup{
        rainbow = {
    -- Setting colors
    colors = {
        "#EFF982",
        "#AE81FF",
        "#F92672",
        "#A6E22E",
        "#FD971F",
        "#46F971",
        "#66D9EF"
    },
    -- Term colors
  },
}
require('gitsigns').setup{
     signs = {
    add          = {hl = 'GitSignsAdd'   , text = '+', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
    change       = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    delete       = {hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
  },
   current_line_blame = true

}
require("indent_blankline").setup {}
require("todo-comments").setup{}
require("FTerm").setup{}
require("modes").setup{
    colors = {
        copy = "#AE81FF",
        delete = "#F92672",
        insert = "#46F971",
        visual = "#EFF982",
    },
}
require('Comment').setup()
