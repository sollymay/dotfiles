return {
    'folke/trouble.nvim',
    config = function()
        require("trouble").setup({
            auto_open = true,
            auto_close = true,
        })
    end
}
