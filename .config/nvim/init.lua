-- General Config
vim.opt.undofile = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.encoding = 'utf-8' -- encoding is utf-8
vim.opt.autochdir = false -- don't set working dir to current file
vim.opt.ignorecase = true -- autocomplete will be case insensitive
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.splitbelow = true
vim.opt.smartindent = true
vim.opt.title = false
vim.opt.mouse = 'a'
vim.opt.splitright = true -- opens a split to the right instead of left
vim.opt.showtabline = 2
vim.o.completeopt = "menu,menuone"
vim.o.signcolumn = "yes"
-- vim.g.glow_border = "rounded"
vim.o.cmdheight = 0 -- no spacing for the command line
-- Setting leader to space
vim.g.mapleader = " "

-- Install plugins
require "user.lsp"
require "user.plugins"

-- Plugins configuration
require "user.cmp"
require "user.colorizer"
require "user.comment"
require "user.dap"
require "user.fterm"
require "user.gitsigns"
require "user.indent_blankline"
require "user.lualine"
require "user.nvim-autopairs"
require "user.nvim-tree"
require "user.nvim-treesitter"
require "user.telescope"
require "user.todo-comments"
require "user.toggleterm"
require "user.hydra"
require "user.dracula"
require "user.modes"
require "user.whitespace"
-- Keymaps
require "user.keymaps"

-- Things i still can't do in LUA
vim.cmd [[ autocmd BufWritePre *.dart lua vim.lsp.buf.format({timeout_ms =1000})]]
vim.cmd [[ autocmd BufWritePre *.py lua vim.lsp.buf.format({timeout_ms = 1000})]]
vim.cmd [[ autocmd BufWritePre *.lua lua vim.lsp.buf.format({timeout_ms=1000})]]
vim.cmd [[ let g:VM_maps = {}]]
vim.cmd [[ let g:VM_maps['Find Under'] = '<C-d>']]
vim.cmd [[ let g:VM_maps['Find Subword Under'] = '<C-d>']]
vim.cmd [[let g:VM_maps["Select Cursor Down"] = '<M-C-Down>']]
vim.cmd [[let g:VM_maps["Select Cursor Up"]   = '<M-C-Up>']]
vim.cmd [[ let g:dracula_colorterm = 0]]
-- Nvim theme
vim.cmd [[colorscheme dracula]]
vim.cmd [[ highlight gitsignscurrentlineblame guifg=#ffffff]]
