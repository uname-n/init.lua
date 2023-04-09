local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use { 'wbthomason/packer.nvim' }

    use { 'echasnovski/mini.base16' }

	use { 'nvim-lua/plenary.nvim' }	
	use { 'nvim-telescope/telescope.nvim', tag = '0.1.1', requires = { { 'nvim-lua/plenary.nvim' } } }
	use { "LinArcX/telescope-command-palette.nvim" }
    use { 'ThePrimeagen/harpoon' }

    use { 'preservim/nerdtree' }

    use { 'neoclide/coc.nvim', branch = 'release' }
	use { 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } }
    
    use { 'github/copilot.vim', branch = 'release' }
    use { 'laytan/cloak.nvim' }

    if packer_bootstrap then
        require('packer').sync()
    end
end)