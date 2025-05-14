return {
  "folke/snacks.nvim",
  opts = {
    explorer = {},
    picker = {
      sources = {
        explorer = {
          auto_close = true,
        },
      },
    },
  },
  keys = { {
    "<C-e>",
    function()
      Snacks.explorer()
    end,
    desc = "File Explorer",
  } },
}
