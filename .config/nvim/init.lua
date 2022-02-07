-- General Config
vim.opt.undofile = true
vim.opt.encoding = 'utf-8' -- encoding is utf-8
vim.opt.autochdir = false -- don't set working dir to current file
vim.opt.ignorecase = true -- autocomplete will be case insensitive
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.background = 'dark'
vim.opt.termguicolors = true
vim.opt.expandtab = true
vim.opt.splitbelow = true
vim.opt.autoindent = true
vim.opt.title = true
vim.opt.mouse = 'a'
vim.opt.showtabline=2
vim.opt.autochdir = true
vim.o.completeopt = "menu,menuone"
vim.o.signcolumn = "yes"
-- vim.opt.mousehide = true
-- Setting leader to space
vim.g.mapleader = " "
vim.g.nvim_tree_quit_on_open = 1
-- Install plugins
require('plugins')

-- Plugins configuration
require('plugin-settings')

-- Shortcuts
require('shortcuts')

-- Things i still can't do in LUA
vim.cmd[[ highlight gitsignscurrentlineblame guifg=#ffffff]]
vim.cmd[[ autocmd BufWritePre *.* lua vim.lsp.buf.formatting_sync(nil, 1000)]]
