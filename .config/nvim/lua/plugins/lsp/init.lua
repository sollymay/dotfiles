return {
    "neovim/nvim-lspconfig",
    event = "BufReadPre",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "williamboman/mason-lspconfig.nvim",
        { 'folke/neodev.nvim',
            config = function()
                require('neodev').setup()
            end
        },
    },
    config = function(_, _)
        local mason_lspconfig = require("mason-lspconfig")
        local lspconfig = require("lspconfig")
        local lsp_servers = {
            "pylsp",
            "lua_ls",
            "bashls",
            "dockerls",
            "jsonls",
            "sqlls",
            "hls",
            "marksman"
        }

        mason_lspconfig.setup({
            ensure_installed = lsp_servers,
        })

        mason_lspconfig.setup_handlers({
            function(server_name)
                lspconfig[server_name].setup({
                })
            end,
            ["pyright"] = function()
                lspconfig.pylsp.setup({
                    settings = { pylsp = {
                        configurationSources = { "flake8" },
                        plugins = {
                            jedi_completion = { enabled = true },
                            jedi_hover = { enabled = true },
                            jedi_references = { enabled = true },
                            jedi_signature_help = { enabled = true },
                            jedi_symbols = { enabled = true, all_scopes = true },
                            pycodestyle = { enabled = false },
                            flake8 = {
                                enabled = true,
                                ignore = {},
                                maxLineLength = 120
                            },
                            mypy = { enabled = false },
                            isort = { enabled = false },
                            yapf = { enabled = false },
                            pylint = { enabled = false },
                            pydocstyle = { enabled = false },
                            mccabe = { enabled = false },
                            preload = { enabled = false },
                            rope_completion = { enabled = false }
                        }
                    },
                    }
                })
            end,
            ["lua_ls"] = function()
                lspconfig.lua_ls.setup({
                    Lua = {
                        runtime = {
                            version = 'LuaJIT',
                        },
                        diagnostics = {
                            globals = { 'vim' }
                        },
                        completion = {
                            callSnippet = "Replace"
                        }
                    }
                })
            end,
            ["marksman"] = function()
                lspconfig.marksman.setup({

                })
            end
        })
    end,
}
