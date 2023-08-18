-- NerdTree alternative

return {
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
            },
        })
    end,
}
