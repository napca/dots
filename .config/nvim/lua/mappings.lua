require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

vim.cmd('source ~/.config/nvim/workman.vim')
map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>?", ":NvCheatsheet<CR>")
map("n", "<leader>ff" ,  ":Telescope file_browser <CR>",{desc = "open Telescope file browser"})
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
