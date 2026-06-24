local capabilities = vim.lsp.protocol.make_client_capabilities()

return {
    "neovim/nvim-lspconfig",

    config = function()
        vim.lsp.enable("lua_ls")
        vim.lsp.enable("gopls")
        vim.lsp.enable("pyright")
        vim.lsp.enable("bashls")
        vim.lsp.enable("clangd")
    end,
}
