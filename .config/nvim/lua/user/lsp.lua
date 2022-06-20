-- lsp-config configuration:
require('lspconfig').pylsp.setup{
      settings = {
    pylsp = {
      configurationSources = {"flake8"},
      plugins = {
        jedi_completion = {enabled = true},
        jedi_hover = {enabled = true},
        jedi_references = {enabled = true},
        jedi_signature_help = {enabled = true},
        jedi_symbols = {enabled = true, all_scopes = true},
        pycodestyle = {enabled = false},
        flake8 = {
          enabled = true,
          ignore = {},
          maxLineLength = 120
        },
        mypy = {enabled = false},
        isort = {enabled = false},
        yapf = {enabled = false},
        pylint = {enabled = false},
        pydocstyle = {enabled = false},
        mccabe = {enabled = false},
        preload = {enabled = false},
        rope_completion = {enabled = false}
      }
    }
  },
}
require('lspconfig').sumneko_lua.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
}
require('lspconfig').bashls.setup{}
require('lspconfig').dockerls.setup{}
require('lspconfig').jsonls.setup{}
require('lspconfig').sqlls.setup{}
require('lspconfig').hls.setup{}

require("nvim-lsp-installer").setup({
    automatic_installation = false,
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})
-- trouble (diagnostics) in list:
require('trouble').setup{
        auto_open = true,
        auto_close = true,
}

-- Nvim-compe configuration (completion)

-- flutter-tools (aka LSP flutter) configuration:
require("flutter-tools").setup{
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

-- Renamer configuration
require("renamer").setup{

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
