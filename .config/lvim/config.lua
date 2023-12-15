-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
vim.cmd("set wrap")
vim.cmd("set linebreak")
vim.cmd("source ~/.config/nvim/workman.vim")
lvim.plugins= {
   "Mofiqul/adwaita.nvim",
   lazy = false,
   priority = 1000,
    -- configure and set on startup
   config = function()
     vim.g.adwaita_darker = true             -- for darker version
--     vim.g.adwaita_disable_cursorline = true -- to disable cursorline
--     vim.g.adwaita_transparent = true        -- makes the background transparent
     vim.cmd('colorscheme adwaita')
   end,
   "sainnhe/gruvbox-material",
  config = function()
    vim.g.gruvbox_material_background = 'soft'
    vim.g.gruvbox_material_better_performance = true
    vim.cmd('colorscheme gruvbox-material')
    vim.g.lightline = "{'colorscheme' : 'gruvbox-material'}"
  end,
}
lvim.colorscheme="gruvbox-material"
