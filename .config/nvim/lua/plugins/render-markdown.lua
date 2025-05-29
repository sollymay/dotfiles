return {
  "MeanderingProgrammer/render-markdown.nvim",
  opts = {
    -- Options for the plugin
    -- See
    code = {
      sign = true, -- Show signs in the gutter
      width = "block",
      right_pad = 1,
    },
    heading = {
      sign = true, -- Show signs for headings
      width = "full",
      right_pad = 4,
      left_pad = 2,
      icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
    },
    bullet = {
      enable = true, -- Enable bullet points
      right_pad = 2, -- Padding after bullet points
    },
    checkbox = {
      enable = true, -- Enable checkboxes
      right_pad = 2, -- Padding after checkboxes
    },
  },
  ft = { "markdown", "md", "norg", "rmd" },
  config = function(_, opts)
    require("render-markdown").setup(opts)
    Snacks.toggle({
      name = "Render Markdown",
      get = function()
        return require("render-markdown.state").enabled()
      end,
      set = function(enabled)
        local m = require("render-markdown")
        if enabled then
          m.enable()
        else
          m.disable()
        end
      end,
    }):map("<leader>um")
  end,
}
