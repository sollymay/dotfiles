return {
"ellisonleao/glow.nvim",
config = function() 
    require("glow").setup{
        style = vim.o.background,
        border = "rounded",
    }
end
}
