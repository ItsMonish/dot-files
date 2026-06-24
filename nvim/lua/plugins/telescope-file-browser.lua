return {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim",
    },
    config = function()
        local actions = require("telescope._extensions.file_browser.actions")
        require("telescope").setup({
            mappings = {
                ["n"] = {
                    ["<C-h>"] = actions.toggle_hidden,
                },
            },
        })
    require("telescope").load_extension("file_browser")
    end,
}
