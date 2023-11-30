return {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    dependencies = {
        -- Required.
        "nvim-lua/plenary.nvim",
        "hrsh7th/nvim-cmp",
        "nvim-telescope/telescope.nvim",
    },
    opts = {
        detect_cwd = true,
        completion = {
            nvim_cmp = true,
            min_chars = 2,
            prepend_note_id = true,
        },
    },
}
