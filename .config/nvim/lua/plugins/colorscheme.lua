return {
  -- add dracula
  {
    "Mofiqul/dracula.nvim",
    priority = 100000,
    config = function()
      require("dracula").setup({
        -- customize dracula color palette
        colors = {
          bg = "#282A36",
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
          visual = "#EFF982",
          gutter_fg = "#4B5263",
          nontext = "#3B4048",
        },
        -- -- show the '~' characters after the end of buffers
        show_end_of_buffer = false, -- default false
        -- use transparent background
        transparent_bg = true, -- default false
        -- set custom lualine background color
        --
        -- lualine_bg_color = "#44475a", -- default nil
        -- set italic comment
        italic_comment = true, -- default false
        -- overrides the default highlights see `:h synIDattr`
        overrides = function(colors)
          return {
            CmpItemKindMethod = { fg = colors.bg, bg = colors.green },
            CmpItemKindText = { fg = colors.bg, bg = colors.orange },
            CmpItemKindProperty = { fg = colors.bg, bg = colors.purple },
            CmpItemKindFunction = { fg = colors.bg, bg = colors.green },
            CmpItemKindConstructor = {},
            CmpItemKindVariable = { fg = colors.bg, bg = colors.fg },
            CmpItemKindClass = { fg = colors.bg, bg = colors.bright_cyan },
            CmpItemKindInterface = { link = "@type" },
            CmpItemKindModule = { link = "@namespace" },
            CmpItemKindOperator = { link = "@operator" },
            CmpItemKindReference = { link = "@parameter.reference" },
            CmpItemKindUnit = { link = "@field" },
            CmpItemKindValue = { link = "@field" },
            CmpItemKindField = { fg = colors.bg, bg = colors.orange },
            CmpItemKindEnum = { link = "@field" },
            CmpItemKindKeyword = { fg = colors.bg, bg = colors.pink },
            CmpItemKindSnippet = { fg = colors.bg, bg = colors.orange },
            CmpItemKindColor = { link = "DevIconCss" },
            CmpItemKindFile = { link = "TSURI" },
            CmpItemKindFolder = { link = "TSURI" },
            CmpItemKindEvent = { link = "@constant" },
            CmpItemKindEnumMember = { link = "@field" },
            CmpItemKindConstant = { link = "@constant" },
            CmpItemKindStruct = { link = "@structure" },
            CmpItemKindTypeParameter = { link = "@parameter" },
            CmpItemAbbrMatch = { fg = colors.cyan, bg = "NONE" },
            Pmenu = { fg = colors.white, bg = "NONE" },
            PmenuSel = { bg = colors.selection, fg = "NONE" },
            NeoTreeExpander = { fg = colors.white },
            ["@type"] = { fg = colors.cyan, italic = true },
            ["@attribute"] = { fg = colors.green, italic = true },
            ["@parameter"] = { fg = colors.orange, italic = true },
            ["@label"] = { fg = colors.purple, italic = true },
            ["@variable.builtin"] = { fg = colors.purple, italic = true },
            ["@tag.attribute"] = { fg = colors.green, italic = true },
            t,
          }
        end,
      })
      vim.cmd([[colorscheme dracula]])
    end,
  },

  -- Configure LazyVim to load dracula
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
  },
}
