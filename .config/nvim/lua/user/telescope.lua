-- telescope configuration:
local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

telescope.setup({
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
-- telescope.load_extension('fzf')
-- telescope.load_extension('file_browser')
