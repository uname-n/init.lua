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

vim.g.mapleader = " "

require("lazy").setup({
    { 'rose-pine/neovim', name = 'rose-pine' },

    { 'nvim-lua/plenary.nvim' },
    { 'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/plenary.nvim' } } },
    { "LinArcX/telescope-command-palette.nvim" },
    { 'ThePrimeagen/harpoon' },

    { 'preservim/nerdtree' },

    { 'neoclide/coc.nvim', branch = 'release' },
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},

    { 'github/copilot.vim', branch = 'release', tag = 'v1.9.0'},
    { 'laytan/cloak.nvim' },
})