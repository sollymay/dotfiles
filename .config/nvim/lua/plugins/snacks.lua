return {
  "folke/snacks.nvim",
  opts = {
    explorer = {
      -- Explorer module enabled
    },
    picker = {
      hidden = true, -- Show hidden files like .env
      ignored = true, -- Show gitignored files
      sources = {
        explorer = {
          auto_close = true,
          hidden = true,
          ignored = true,
        },
      },
      files = {
        hidden = true,
        ignored = true,
      },
    },
    scroll = {
      enabled = false, -- Disable scrolling animations
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
