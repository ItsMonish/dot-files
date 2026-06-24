return {
    "numToStr/FTerm.nvim",
    config = function()
        require("FTerm").setup({
            border = "double",
            dimensions = {
                height = 0.8,
                width = 0.8,
            },
        })
    end,
}
