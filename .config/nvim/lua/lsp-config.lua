-- lsp-config configuration:
require('lspconfig').pyright.setup{}
require('lspconfig').bashls.setup{}
--require('lspconfig').dartls.setup{}
require('lspconfig').dockerls.setup{}
require('lspconfig').jsonls.setup{}
require('lspconfig').sqlls.setup{}
require('lspconfig').sumneko_lua.setup {
        settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
}

-- trouble (diagnostics) in list:
require('trouble').setup{
        auto_open = true,
        auto_close = true,
}

-- lsp-saga configuration:
require('lspsaga').init_lsp_saga()
-- Nvim-compe configuration (completion)

-- flutter-tools (aka LSP flutter) configuration:
require("flutter-tools").setup{
debugger = {
        enabled = true,
        run_via_dap = true,
},
widget_guides = {
        enabled = true,
},
ui = {
    -- the border type to use for all floating windows, the same options/formats
    -- used for ":h nvim_open_win" e.g. "single" | "shadow" | {<table-of-eight-chars>}
    border = "rounded",
  },
    lsp = {
        color = { -- show the derived colours for dart variables
            enabled = true, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
            background = true, -- highlight the background
            foreground = false, -- highlight the foreground
            virtual_text = true, -- show the highlight using virtual text
            virtual_text_str = "■", -- the virtual text character to highlight
        }
    },
}

-- set borders on completion window (or at least try)
vim.lsp.handlers["textDocument/hover"] =
  vim.lsp.with(
  vim.lsp.handlers.hover,
  {
    border = "rounded"
  }
)

vim.lsp.handlers["textDocument/signatureHelp"] =
  vim.lsp.with(
  vim.lsp.handlers.signature_help,
  {
    border = "rounded"
  }
)
-- DAP configuration
local dap = require('dap')
dap.defaults.fallback.terminal_win_cmd = '80vsplit new'
vim.fn.sign_define('DapBreakpoint', {text='🟥', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapBreakpointRejected', {text='🟦', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='⭐️', texthl='', linehl='', numhl=''})
