local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
-- General Keyboard Shortcuts
vim.api.nvim_set_keymap('', '<C-e>', ':NvimTreeToggle<CR>', {noremap = true}) -- Nvim-tree toggle shortcut
vim.api.nvim_set_keymap('', '<leader>f', ':Telescope find_files<CR>', {noremap = true}) --telescope find files shortcut
vim.api.nvim_set_keymap('', '<leader>g', ':Telescope live_grep<CR>', {noremap = true})
-- LSP related stuff
vim.api.nvim_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "gt", "<cmd>lua vim.lsp.buf.type_definition()<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader>h", "<cmd>lua vim.lsp.buf.signature_help()<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader>dn", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader>dp", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", {noremap=true})
vim.api.nvim_set_keymap('', '<leader>.', ':Lspsaga code_action<CR>', {noremap = true})
vim.api.nvim_set_keymap('', '<leader>r', ':Lspsaga rename<CR>', {noremap = true})
vim.api.nvim_set_keymap('', '<leader>b', ':Lspsaga show_line_diagnostics<CR>', {noremap = true})
-- Utilities
vim.api.nvim_set_keymap('', '<leader>e', '<cmd>Trouble<cr>', {silent = true, noremap = true})
vim.api.nvim_set_keymap('', '<leader><leader>', ':WhichKey<CR>', {noremap=true})
vim.api.nvim_set_keymap('', '<leader>o', ':FlutterOutlineToggle<CR>', {noremap=true})
vim.api.nvim_set_keymap('', 'rn', ':FlutterRun<CR>', {noremap=true})
vim.api.nvim_set_keymap('', '<leader>b', ":lua require'dap'.toggle_breakpoint()<CR>", {noremap=true})
vim.api.nvim_set_keymap('', '<leader>tt', ':TodoTrouble<CR>', {noremap=true})
vim.api.nvim_set_keymap('', '<leader>t', ":ToggleTerm<CR>", {noremap=true})
vim.api.nvim_set_keymap('', '<leader>pm', ':Glow<CR>', {noremap = true})
-- Better window navigation
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", {noremap=true})
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", {noremap=true})
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", {noremap=true})
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", {noremap=true})
-- Move text up and down
vim.api.nvim_set_keymap('n', 'J', ':m .+1<CR>==', {noremap=true})
vim.api.nvim_set_keymap('n', 'K', ':m .-2<CR>==', {noremap = true})
vim.api.nvim_set_keymap('v', 'J', ":m '>+1<CR>gv=gv", { noremap=true })
vim.api.nvim_set_keymap('v', 'K', ":m '<-2<CR>gv=gv", { noremap=true })
-- DAP
--map('n', '<c-k>', ':lua require"dap".step_out()<CR>')
--map('n', "<c-l>", ':lua require"dap".step_into()<CR>')
--map('n', '<c-j>', ':lua require"dap".step_over()<CR>')
--map('n', '<c-h>', ':lua require"dap".continue()<CR>')
map('n', '<leader>rc', ':lua require"dap".run_to_cursor()<CR>')
map('n', '<leader>dk', ':lua require"dap".up()<CR>')
map('n', '<leader>dj', ':lua require"dap".down()<CR>')
map('n', '<leader>dc', ':lua require"dap".terminate()<CR>')
map('n', '<leader>dr', ':lua require"dap".repl.toggle({}, "vsplit")<CR><C-w>l')
map('n', '<leader>dH', ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
map('n', '<leader>de', ':lua require"dap".set_exception_breakpoints({"all"})<CR>')
map('n', '<leader>da', ':lua require"debugHelper".attach()<CR>')
map('n', '<leader>dA', ':lua require"debugHelper".attachToRemote()<CR>')
map('n', '<leader>di', ':lua require"dap.ui.widgets".hover()<CR>')
map('n', '<leader>d?', ':lua local widgets=require"dap.ui.widgets";widgets.centered_float(widgets.scopes)<CR>')
-- Glow (Markdown Preview)
vim.api.nvim_set_keymap('', '<leader>m', ':Glow<CR>', {noremap=true})
-- Multi line operations vim-visual-multi
vim.api.nvim_set_keymap('', '<leader>N', '<C-N>', {noremap=true})
-- LSP Niceties

-- terminal shortcuts
function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
