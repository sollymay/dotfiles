vim.opt.list = true
vim.opt.listchars:append "eol:↴"

return {
    "lukas-reineke/indent-blankline.nvim",
config = function()
require("indent_blankline").setup {
    show_end_of_line = true,
}
end
}
