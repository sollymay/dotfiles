return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      options = {
        -- theme = "dracula",
        component_separators = "",
        section_separators = { left = "", right = "" },
      },
      sections = {
        lualine_a = { { "mode", separator = { left = "", right = "" }, right_padding = 2 } },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "%=", "filename" },
        lualine_x = { "filetype" },
        lualine_z = { { "location", separator = { left = "", right = "" }, right_padding = 2 } },
      },
    })
  end,
}
