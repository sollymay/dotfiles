return {
  "akinsho/flutter-tools.nvim",
  config = function()
    require("flutter-tools").setup({
      widget_guides = {
        enabled = true,
      },
      ui = {
        -- the border type to use for all floating windows, the same options/formats
        -- used for ":h nvim_open_win" e.g. "single" | "shadow" | {<table-of-eight-chars>}
        border = "rounded",
      },
    })
  end,
}
