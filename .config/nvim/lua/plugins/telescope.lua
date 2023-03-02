-- telescope configuration:
local telescope = require("telescope")
return {
'nvim-telescope/telescope.nvim',
dependencies = {'nvim-lua/plenary.nvim'},
config = function()
    require("telescope").setup({
    extensions = {
        ["ui-select"] = {
            require("telescope.themes").get_dropdown {

            }
        }
    },
    pickers = {
        current_buffer_fuzzy_find = {
            theme = "dropdown",
            sorting_strategy = "ascending",
            prompt_position = "top",
            previewer = false
        }
    }
})

telescope.load_extension('ui-select')
telescope.load_extension('flutter')
end
}
