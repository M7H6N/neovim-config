        --LAZY.NVIM SETUP
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    "rebelot/kanagawa.nvim",
    {
         "ellisonleao/gruvbox.nvim",
         config = function()
             vim.cmd.colorscheme("gruvbox")
         end,
    },
    {
        "windwp/nvim-autopairs"
    },
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { "c", "lua", "vim", "vimdoc", "query", 
                                    "python"
                },

                auto_install = true,

                highlight = {
                    enable = true,
                },
            })
        end,
    },
    {
        "itchyny/lightline.vim"
    },
})

