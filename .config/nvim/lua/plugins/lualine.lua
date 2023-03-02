
return {'nvim-lualine/lualine.nvim',

config = function()
require("lualine").setup {
    options = {
        theme = 'dracula',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { '%=', 'filename' },
        lualine_x = { 'filetype' },
        lualine_z = { 'location' },
    },
}
end
}
