local map = vim.api.nvim_set_keymap
function f(str)
    local outer_env = _ENV
    return (str:gsub("%b{}", function(block)
            local code = block:match("{(.*)}")
            local exp_env = {}
            setmetatable(exp_env, {
                __index = function(_, k)
                    local stack_level = 5
                    while debug.getinfo(stack_level, "") ~= nil do
                        local i = 1
                        repeat
                            local name, value = debug.getlocal(stack_level, i)
                            if name == k then
                                return value
                            end
                            i = i + 1
                        until name == nil
                        stack_level = stack_level + 1
                    end
                    return rawget(outer_env, k)
                end
            })
            local fn, err = load("return " .. code, "expression `" .. code .. "`", "t", exp_env)
            if fn then
                return tostring(fn())
            else
                error(err, 0)
            end
        end))
end

-- local function map(mode, lhs, rhs, opts)
--     local options = { noremap = true }
--     if opts then options = vim.tbl_extend('force', options, opts) end
--     map(mode, lhs, rhs, options)
-- end
--
-- General Keyboard Shortcuts
map('', '<C-e>', ':NvimTreeToggle<CR>', { noremap = true }) -- Nvim-tree toggle shortcut
map('', '<leader>ff', ':Telescope find_files<CR>', { noremap = true }) --telescope find files shortcut
map('', '<leader>fg', ':Telescope live_grep<CR>', { noremap = true })
map('', '<leader>fb', ':Telescope current_buffer_fuzzy_find<CR>', { noremap = true })
map('', '<leader><leader>', ':Telescope keymaps<CR>', { noremap = true })
map('', '<leader>fh', ':Telescope help_tags<CR>', { noremap = true })
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
map('', '<leader>.', '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true })
map('', '<leader>r', '<cmd>lua require"renamer".rename()<CR>', { noremap = true })
-- Utilities
map('', '<leader>e', ':TroubleToggle<CR>', { silent = true, noremap = true })
map('', '<leader>o', ':FlutterOutlineToggle<CR>', { noremap = true })
map('', 'rn', ':FlutterRun<CR>', { noremap = true })
map('', 'qt', ':FlutterQuit<CR>', { noremap = true })
map('', '<leader>b', ":lua require'dap'.toggle_breakpoint()<CR>", { noremap = true })
map('', '<leader>tt', ':TodoTelescope<CR>', { silent = true, noremap = true })
map('', '<leader>t', ":ToggleTerm<CR>", { noremap = true })
map('', '<leader>pm', ':Glow<CR>', { noremap = true })
local kanban_path = os.getenv("KANBAN_PATH")
local work_kanban_path = os.getenv("WORK_KANBAN_PATH")
map('', '<leader>k', f ":KanbanOpen {kanban_path}<CR>", { noremap = true })
map('', '<leader>w', f ":KanbanOpen {work_kanban_path}<CR>", { noremap = true })
map('n', '<leader>c', ':lua require"dap".continue()<CR>', { noremap = true })
map('n', '<leader>rc', ':lua require"dap".run_to_cursor()<CR>', { noremap = true })
map('n', '<leader>dk', ':lua require"dap".up()<CR>', { noremap = true })
map('n', '<leader>dj', ':lua require"dap".down()<CR>', { noremap = true })
map('n', '<leader>dc', ':lua require"dap".terminate()<CR>', { noremap = true })
map('n', '<leader>dr', ':lua require"dap".repl.toggle({}, "vsplit")<CR><C-w>l', { noremap = true })
map('n', '<leader>dH', ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>"
    , { noremap = true })
map('n', '<leader>de', ':lua require"dap".set_exception_breakpoints({"all"})<CR>', { noremap = true })
map('n', '<leader>da', ':lua require"debugHelper".attach()<CR>', { noremap = true })
map('n', '<leader>dA', ':lua require"debugHelper".attachToRemote()<CR>', { noremap = true })
map('n', '<leader>di', ':lua require"dap.ui.widgets".hover()<CR>', { noremap = true })
map('n', '<leader>d?',
    ':lua local widgets=require"dap.ui.widgets";widgets.centered_float(widgets.scopes)<CR>', { noremap = true })
-- Glow (Markdown Preview)
map('', '<leader>m', ':Glow<CR>', { noremap = true })
-- Multi line operations vim-visual-multi
map('', '<leader>N', '<C-N>', { noremap = true })

map('n', '<leader>wd', ':lua require("whitespace-nvim").trim()<CR>', { noremap = true })

map('n', '<leader>rr', '<Plug>RestNvim', { noremap = true })

-- Normal-mode commands
map('n', '<S-j>', ':MoveLine(1)<CR>', { noremap = true, silent = true })
map('n', '<S-k>', ':MoveLine(-1)<CR>', { noremap = true, silent = true })
map('n', '<S-h>', ':MoveHChar(-1)<CR>', { noremap = true, silent = true })
map('n', '<S-l>', ':MoveHChar(1)<CR>', { noremap = true, silent = true })

-- Visual-mode commands
map('v', '<S-j>', ':MoveBlock(1)<CR>', { noremap = true, silent = true })
map('v', '<S-k>', ':MoveBlock(-1)<CR>', { noremap = true, silent = true })
map('v', '<S-h>', ':MoveHBlock(-1)<CR>', { noremap = true, silent = true })
map('v', '<S-l>', ':MoveHBlock(1)<CR>', { noremap = true, silent = true })
-- terminal shortcuts
function _G.set_terminal_keymaps()
    local opts = { noremap = true }
    vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
    vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
    vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
    vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
    vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
    vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-- DAP shortcuts
vim.api.nvim_set_hl(0, 'DapBreakpoint', { fg = '#50fa7b' })
vim.api.nvim_set_hl(0, 'DapLogPoint', { fg = '#f1fa8c' })
vim.api.nvim_set_hl(0, 'DapStopped', { fg = '#ff5555' })

vim.fn.sign_define('DapBreakpoint', { text = '', texthl = 'DapBreakpoint' })
vim.fn.sign_define('DapBreakpointCondition', { text = 'ﳁ', texthl = 'DapBreakpoint' })
vim.fn.sign_define('DapBreakpointRejected', { text = '', texthl = 'DapBreakpoint' })
vim.fn.sign_define('DapLogPoint', { text = '', texthl = 'DapLogPoint' })
vim.fn.sign_define('DapStopped', { text = '', texthl = 'DapStopped' })
