vim.opt.list = true
vim.opt.listchars:append "eol:↴"

return {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
        require("ibl").setup {
        }
    end
}
