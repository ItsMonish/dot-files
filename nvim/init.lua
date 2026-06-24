vim.g.mapleader = " "

vim.opt.runtimepath:append(vim.fn.stdpath("data") .. "/site")

require("lazy-plugins")
require("options")
require("configs")
require("keybinds")
