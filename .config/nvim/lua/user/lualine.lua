local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
    return
end
lualine.setup {
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
