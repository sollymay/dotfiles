-- nvim-treesiter config
local status_ok, ts_configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end
ts_configs.setup{
highlight = {
  enable = true,
},
indent = {
  enable = true,
  colors = {
    "#EFF982",
    "#AE81FF",
    "#F92672",
    "#A6E22E",
    "#FD971F",
    "#46F971",
    "#66D9EF"
    },
},
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  }
}
