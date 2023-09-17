vim.g.mapleader = ";"
vim.g.maplocalleader = ";"
--require("lazy")
require("options")
require("plugins")
require("lsp")
require("colorscheme")
require("files")
vim.cmd("source ~/.config/nvim/workman.vim")
