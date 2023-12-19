return {
  "mvllow/modes.nvim",
  config = function()
    require("modes").setup({
      colors = {
        copy = "#BD93F9",
        delete = "#FF5555",
        insert = "#50fa7b",
        visual = "#F1FA8C",
      },
      set_number = true,
      set_cursor = true,
      line_opacity = 0.6,
    })
  end,
}
