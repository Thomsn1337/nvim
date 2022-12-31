local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    -- Packer handles itself
    use 'wbthomason/packer.nvim'

    -- Colorscheme
    use 'shaunsingh/nord.nvim'

    --Autopairs, automatic bracket pairs
    use 'windwp/nvim-autopairs'

    -- Completion
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'saadparwaiz1/cmp_luasnip'
    use 'hrsh7th/cmp-nvim-lsp'

    -- LuaSnip, snippet engine
    use({"L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*"})

    -- LSP
    use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    }

    -- NvimTree, file explorer
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
    }

    -- Lualine, statusline with powerline effects
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- Bufferline, shows open buffers
    use{
        'akinsho/bufferline.nvim',
        requires = 'nvim-tree/nvim-web-devicons'
    }
    
    -- Treesitter, code highlighter
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use 'p00f/nvim-ts-rainbow'

    -- IndentBlankline, indent visualization
    use 'lukas-reineke/indent-blankline.nvim'

    -- ToggleTerm, terminal buffer that can be toggled
    use {"akinsho/toggleterm.nvim", tag = '*'}

    if packer_bootstrap then
        require('packer').sync()
    end
end)
