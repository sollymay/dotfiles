-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = vim.keymap.set

map("", "<leader>ff", ":Telescope find_files<CR>", { noremap = true }) --telescope find files shortcut
map("", "<leader>fg", ":Telescope live_grep<CR>", { noremap = true })
map("", "<leader>fb", ":Telescope current_buffer_fuzzy_find<CR>", { noremap = true })
map("", "<leader><leader>", ":Telescope keymaps<CR>", { noremap = true })
map("", "<leader>fh", ":Telescope help_tags<CR>", { noremap = true })

-- LSP related stuff
map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true })
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true })
map("n", "gt", "<cmd>lua vim.lsp.buf.type_definition()<CR>", { noremap = true })
map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { noremap = true })
map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true })
map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", { noremap = true })
map("n", "<leader>h", "<cmd>lua vim.lsp.buf.signature_help()<CR>", { noremap = true })
map("n", "<leader>dn", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", { noremap = true })
map("n", "<leader>dp", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", { noremap = true })
map("", "<leader>.", "<cmd>lua vim.lsp.buf.code_action()<CR>", { noremap = true })
map("", "<leader>r", '<cmd>lua require"renamer".rename()<CR>', { noremap = true })

-- Utilities
map("", "<leader>e", ":TroubleToggle<CR>", { silent = true, noremap = true })
map("", "<leader>o", ":FlutterOutlineToggle<CR>", { noremap = true })
map("", "rn", ":FlutterRun<CR>", { noremap = true })
map("", "qt", ":FlutterQuit<CR>", { noremap = true })
map("", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>", { noremap = true })
map("", "<leader>tt", ":TodoTelescope<CR>", { silent = true, noremap = true })

-- Glow (Markdown Preview)
map("", "<leader>m", ":Glow<CR>", { noremap = true })

-- Normal-mode commands
map("n", "<S-j>", ":MoveLine(1)<CR>", { noremap = true, silent = true })
map("n", "<S-k>", ":MoveLine(-1)<CR>", { noremap = true, silent = true })
map("n", "<S-h>", ":MoveHChar(-1)<CR>", { noremap = true, silent = true })
map("n", "<S-l>", ":MoveHChar(1)<CR>", { noremap = true, silent = true })

-- Visual-mode commands
map("v", "<S-j>", ":MoveBlock(1)<CR>", { noremap = true, silent = true })
map("v", "<S-k>", ":MoveBlock(-1)<CR>", { noremap = true, silent = true })
map("v", "<S-h>", ":MoveHBlock(-1)<CR>", { noremap = true, silent = true })
map("v", "<S-l>", ":MoveHBlock(1)<CR>", { noremap = true, silent = true })
