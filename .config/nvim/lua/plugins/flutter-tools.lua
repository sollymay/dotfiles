return {
    'akinsho/flutter-tools.nvim',
    config = function()
        require("flutter-tools").setup {
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
                    background_color = { r = 40, g = 42, b = 54 },
                    foreground = false, -- highlight the foreground
                    virtual_text = true, -- show the highlight using virtual text
                    virtual_text_str = "■", -- the virtual text character to highlight
                }
            },

        }
    end,
}
