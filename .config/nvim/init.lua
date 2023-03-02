-- General Config
vim.opt.undofile = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.encoding = 'utf-8' -- encoding is utf-8
vim.opt.autochdir = false -- don't set working dir to current file
vim.opt.ignorecase = true -- autocomplete will be case insensitive
vim.opt.number = true -- numbers on the left of each line of code
vim.opt.relativenumber = true -- make numbers above relative to cursor
vim.opt.cursorline = true -- highlight cursor line
vim.opt.termguicolors = true -- terminal colors
vim.opt.expandtab = true -- expand tabs
vim.opt.shiftwidth = 4 -- how many spaces the tab is
vim.opt.tabstop = 4 -- where the tabstop is
vim.opt.splitbelow = true -- split below by default
vim.opt.smartindent = true -- indentation strategy
vim.opt.title = false -- don't have a title row on top
vim.opt.mouse = 'a' -- allow mouse usage
vim.opt.splitright = true -- opens a split to the right instead of left
vim.opt.showtabline = 2
vim.o.completeopt = "menu,menuone"
vim.o.signcolumn = "yes"
-- vim.g.glow_border = "rounded"
vim.o.cmdheight = 0 -- no spacing for the command line
vim.g.mapleader = " " -- Setting leader to space

-- Install plugins
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
-- -- Plugins configuration
require("lazy").setup("plugins", { ui = { border = "rounded", }, })
-- Keymaps
require "keymaps"

-- Things i still can't do in LUA
vim.cmd [[ autocmd BufWritePre *.dart lua vim.lsp.buf.format({timeout_ms =1000})]]
vim.cmd [[ autocmd BufWritePre *.py lua vim.lsp.buf.format({timeout_ms = 1000})]]
vim.cmd [[ autocmd BufWritePre *.lua lua vim.lsp.buf.format({timeout_ms=1000})]]
vim.cmd [[ let g:VM_maps = {}]]
vim.cmd [[ let g:VM_maps['Find Under'] = '<C-d>']]
vim.cmd [[ let g:VM_maps['Find Subword Under'] = '<C-d>']]
vim.cmd [[let g:VM_maps["Select Cursor Down"] = '<M-C-Down>']]
vim.cmd [[let g:VM_maps["Select Cursor Up"]   = '<M-C-Up>']]
vim.cmd [[ highlight gitsignscurrentlineblame guifg=#ffffff]]
-- vim.cmd [[ let g:dracula_colorterm = 0]]
