vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Bufferline and buffer related keymaps
vim.keymap.set("n", "<C-n>", "<cmd>BufferLineCycleNext<CR>", { desc = "Move to next buffer" })
vim.keymap.set("n", "<C-p>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Move to previous buffer" })

vim.keymap.set("n", "<leader>bc", "<cmd>bdelete<CR>", { desc = "Close current buffer" })

vim.keymap.set("n", "<leader>bn", "<cmd>BufferLineMoveNext<CR>", { desc = "Move buffer to next position" })
vim.keymap.set("n", "<leader>bp", "<cmd>BufferLineMovePrev<CR>", { desc = "Move buffer to previous position" })

-- Telescope keymaps
local telescope = require("telescope.builtin")

require("telescope").setup({
    extensions = {
        ["ui-select"] = {
            require("telescope.themes").get_dropdown(),
       },
    },
})

pcall(require("telescope").load_extension, "fzf")
pcall(require("telescope").load_extension, "ui-select")

vim.keymap.set("n", "<leader>sh", telescope.help_tags, { desc = "[S]earch [H]elp" })
vim.keymap.set("n", "<leader>sk", telescope.keymaps, { desc = "[S]earch [K]eymaps" })
vim.keymap.set("n", "<leader>sf", telescope.find_files, { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<leader>ss", telescope.builtin, { desc = "[S]earch [S]elect Telescope" })
vim.keymap.set("n", "<leader>sw", telescope.grep_string, { desc = "[S]earch current [W]ord" })
vim.keymap.set("n", "<leader>sg", telescope.live_grep, { desc = "[S]earch by [G]rep" })
vim.keymap.set("n", "<leader>sd", telescope.diagnostics, { desc = "[S]earch [D]iagnostics" })
vim.keymap.set("n", "<leader>sr", telescope.resume, { desc = "[S]earch [R]esume" })
vim.keymap.set("n", "<leader>s.", telescope.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
vim.keymap.set("n", "<leader><leader>", telescope.buffers, { desc = "[ ] Find existing buffers" })

vim.keymap.set("n", "<leader>sn", function()
    telescope.find_files({ cwd = vim.fn.stdpath("config") })
end, { desc = "[S]earch [N]eovim files" })

-- Telescope file browser
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope file_browser<CR>", { desc = "Open Telescope file browser" })

-- Telescope and LSP keymaps
vim.keymap.set("n", "gr", telescope.lsp_references,
    { desc = "[G]oto [R]eferences" })

vim.keymap.set("n", "gd", telescope.lsp_definitions,
    { desc = "[G]oto [D]efinition" })

vim.keymap.set("n", "gI", telescope.lsp_implementations,
    { desc = "[G]oto [I]mplementation" })

vim.keymap.set("n", "<leader>D", telescope.lsp_type_definitions,
    { desc = "Type [D]efinition" })

vim.keymap.set("n", "<leader>ds", telescope.lsp_document_symbols,
    { desc = "[D]ocument [S]ymbols" })

vim.keymap.set("n", "<leader>ws", telescope.lsp_dynamic_workspace_symbols,
    { desc = "[W]orkspace [S]ymbols" })

-- Fterm keybinds
vim.keymap.set("n", "<A-i>", '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set("t", "<A-i>", '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
