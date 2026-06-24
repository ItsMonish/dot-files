return {
    "saghen/blink.cmp",

    version = "*",

    opts = {
        keymap = {
            preset = "default",
            ['<Tab>'] = { 'accept', 'fallback' },
            ['<CR>'] = { 'select_and_accept', 'fallback' }
        },

        appearance = {
            nerd_font_variant = "mono",
        },

        completion = {
            documentation = {
                auto_show = true,
            },
        },

        sources = {
            default = {
                "lsp",
                "path",
                "buffer",
            },
        },
    },
}
