-- NerdTree alternative

local tree_cb = require 'nvim-tree.config'.nvim_tree_callback

local function open_nvim_tree(data)
    local directory = vim.fn.isdirectory(data.file) == 1

    if not directory then
        return
    end

    vim.cmd.cd(data.file)
    -- open the tree
    require("nvim-tree.api").tree.open()
end

vim.g.view_mappings_list = {
    ["<C-.>"] = tree_cb("edit_in_place"),
}

return{
'nvim-tree/nvim-tree.lua',
config = function()
    require("nvim-tree").setup({
    view = {
        width = 50,
        number = true,
        relativenumber = false,
    },
    git = {
        ignore = false,
    },
    actions = {
        open_file = {
            quit_on_open = true
        },
        change_dir = {
            enable = false,
        },
    },
    renderer = {
        indent_width = 2,
        indent_markers = {
            enable = true,
            inline_arrows = false,
            icons = {
                bottom = ""
            }
        },
        icons = {
            git_placement = "before",
            modified_placement = "after",
            padding = " ",
            show = {
                folder_arrow = false,
                git = true,
                modified = true,
            }
        }
    },})
    vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
end,

}
