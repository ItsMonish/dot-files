vim.g.mapleader = " "

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

vim.keymap.set("n", "<C-n>", "<cmd>BufferLineCycleNext<CR>", { desc = "Move to next buffer" })
vim.keymap.set("n", "<C-p>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Move to previous buffer" })
vim.keymap.set("n", "<leader>bc", "<cmd>bdelete<CR>", { desc = "Close current buffer" })

vim.keymap.set("n", "<leader>fb", "<cmd>Telescope file_browser<CR>", { desc = "Open Telescope file browser" })

vim.keymap.set("n", "<leader>bn", "<cmd>BufferLineMoveNext<CR>", { desc = "Move buffer to next position" })
vim.keymap.set("n", "<leader>bp", "<cmd>BufferLineMovePrev<CR>", { desc = "Move buffer to previous position" })

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
