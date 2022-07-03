-- General Config
vim.opt.undofile = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.encoding = 'utf-8' -- encoding is utf-8
vim.opt.autochdir = false -- don't set working dir to current file
vim.opt.ignorecase = true -- autocomplete will be case insensitive
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.background = 'dark'
vim.opt.termguicolors = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.splitbelow = true
vim.opt.smartindent = true
vim.opt.title = true
vim.opt.mouse = 'a'
vim.opt.splitright = true -- opens a split to the right instead of left
vim.opt.showtabline=2
vim.o.completeopt = "menu,menuone"
vim.o.signcolumn = "yes"
vim.g.glow_border = "rounded"

-- Setting leader to space
vim.g.mapleader = " "

-- Install plugins
require "user.plugins"

-- Plugins configuration
require "user.cmp"
require "user.colorizer"
require "user.comment"
require "user.dap"
require "user.fterm"
require "user.gitsigns"
require "user.indent_blankline"
require "user.lsp"
require "user.lualine"
require "user.modes"
require "user.nvim-autopairs"
require "user.nvim-tree"
require "user.nvim-treesitter"
require "user.telescope"
require "user.todo-comments"
require "user.toggleterm"
require "user.hydra"
-- Keymaps
require "user.keymaps"

-- Things i still can't do in LUA
vim.cmd[[ highlight gitsignscurrentlineblame guifg=#ffffff]]
vim.cmd[[ autocmd BufWritePre *.dart lua vim.lsp.buf.formatting_sync(nil, 1000)]]
vim.cmd[[ autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 1000)]]
vim.cmd[[ let g:VM_maps = {}]]
vim.cmd[[ let g:VM_maps['Find Under'] = '<C-d>']]
vim.cmd[[ let g:VM_maps['Find Subword Under'] = '<C-d>']]
vim.cmd[[let g:VM_maps["Select Cursor Down"] = '<M-C-Down>']]
vim.cmd[[let g:VM_maps["Select Cursor Up"]   = '<M-C-Up>']]
-- Nvim theme
vim.cmd[[colorscheme dracula]]
vim.api.nvim_set_hl(0, 'DapBreakpoint', {fg='#50fa7b' })
vim.api.nvim_set_hl(0, 'DapLogPoint', {fg='#f1fa8c'})
vim.api.nvim_set_hl(0, 'DapStopped', {fg='#ff5555'})

vim.fn.sign_define('DapBreakpoint', { text='', texthl='DapBreakpoint'})
vim.fn.sign_define('DapBreakpointCondition', { text='ﳁ', texthl='DapBreakpoint'})
vim.fn.sign_define('DapBreakpointRejected', { text='', texthl='DapBreakpoint'})
vim.fn.sign_define('DapLogPoint', { text='', texthl='DapLogPoint'})
vim.fn.sign_define('DapStopped', { text='', texthl='DapStopped'})
vim.api.nvim_command("redraw")
