vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "
vim.g.vimtex_compiler_latexmk = {
    executable = 'latexmk',
    options = {
        '-xelatex',
        '-file-line-error',
        '-synctex=1',
        '-interaction=nonstopmode',
    },
}

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"
require 'lspconfig'.qmlls.setup{}
require 'lspconfig'.pyright.setup{}
require 'lspconfig'.asm_lsp.setup{}
require 'lspconfig'.texlab.setup{}
require 'lspconfig'.gopls.setup{}
vim.schedule(function()
  require "mappings"
end)
vim.cmd("set culopt=both")
