-- NerdTree alternative
local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
    return
end

local tree_cb = require 'nvim-tree.config'.nvim_tree_callback
vim.g.view_mappings_list = {
    ["<C-.>"] = tree_cb("edit_in_place"),
}

nvim_tree.setup {

    open_on_setup = true,
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
            show = {
                folder_arrow = false,
            }
        }
    },

}
