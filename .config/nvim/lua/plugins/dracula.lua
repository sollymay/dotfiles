local dracula = require('dracula')
return {
    'Mofiqul/dracula.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        require("dracula").setup {
            -- customize dracula color palette
            colors = {
                bg = "none",
                fg = "#F8F8F2",
                selection = "#44475A",
                comment = "#6272A4",
                red = "#FF5555",
                orange = "#FFB86C",
                yellow = "#F1FA8C",
                green = "#50fa7b",
                purple = "#BD93F9",
                cyan = "#8BE9FD",
                pink = "#FF79C6",
                bright_red = "#FF6E6E",
                bright_green = "#69FF94",
                bright_yellow = "#FFFFA5",
                bright_blue = "#D6ACFF",
                bright_magenta = "#FF92DF",
                bright_cyan = "#A4FFFF",
                bright_white = "#FFFFFF",
                menu = "#21222C",
                -- visual = "#EFF982",
                gutter_fg = "#4B5263",
                nontext = "#3B4048",
            },
            -- -- show the '~' characters after the end of buffers
            show_end_of_buffer = false, -- default false
            -- use transparent background
            transparent_bg = true, -- default false
            -- set custom lualine background color
            -- lualine_bg_color = "#44475a", -- default nil
            -- set italic comment
            italic_comment = true, -- default false
            -- overrides the default highlights see `:h synIDattr`
            overrides = {
                -- Examples
                -- NonText = { fg = dracula.colors().white }, -- set NonText fg to white
                -- NvimTreeIndentMarker = { link = "NonText" }, -- link to NonText highlight
                -- Nothing = {} -- clear highlight of Nothing
                CmpItemKindMethod = { fg = dracula.colors().bg, bg = dracula.colors().green },
                CmpItemKindText = { fg = dracula.colors().bg, bg = dracula.colors().orange },
                CmpItemKindProperty = { fg = dracula.colors().bg, bg = dracula.colors().purple },
                CmpItemKindFunction = { fg = dracula.colors().bg, bg = dracula.colors().green },
                CmpItemKindConstructor = {},
                CmpItemKindVariable = { fg = dracula.colors().bg, bg = dracula.colors().fg },
                CmpItemKindClass = { fg = dracula.colors().bg, bg = dracula.colors().bright_cyan },
                CmpItemKindInterface = { link = "@type" },
                CmpItemKindModule = { link = "@namespace" },
                CmpItemKindOperator = { link = "@operator" },
                CmpItemKindReference = { link = "@parameter.reference" },
                CmpItemKindUnit = { link = "@field" },
                CmpItemKindValue = { link = "@field" },
                CmpItemKindField = { fg = dracula.colors().bg, bg = dracula.colors().orange },
                CmpItemKindEnum = { link = "@field" },
                CmpItemKindKeyword = { fg = dracula.colors().bg, bg = dracula.colors().pink },
                CmpItemKindSnippet = { fg = dracula.colors().bg, bg = dracula.colors().orange },
                CmpItemKindColor = { link = "DevIconCss" },
                CmpItemKindFile = { link = "TSURI" },
                CmpItemKindFolder = { link = "TSURI" },
                CmpItemKindEvent = { link = "@constant" },
                CmpItemKindEnumMember = { link = "@field" },
                CmpItemKindConstant = { link = "@constant" },
                CmpItemKindStruct = { link = "@structure" },
                CmpItemKindTypeParameter = { link = "@parameter" },
                CmpItemAbbrMatch = { fg = dracula.colors().cyan, bg = 'NONE' },
                Pmenu = { fg = dracula.colors().white, bg = 'NONE' },
                PmenuSel = { bg = dracula.colors().selection, fg = 'NONE' },
                ['@type'] = { fg = dracula.colors().cyan, italic = true },
                ['@attribute'] = { fg = dracula.colors().green, italic = true },
                ['@parameter'] = { fg = dracula.colors().orange, italic = true },
                ['@label'] = { fg = dracula.colors().purple, italic = true },
                ['@variable.builtin'] = { fg = dracula.colors().purple, italic = true },
                ['@tag.attribute'] = { fg = dracula.colors().green, italic = true },
            },
        }
        vim.cmd([[colorscheme dracula]])
    end,
}
