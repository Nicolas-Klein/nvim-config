-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
        
	use {
      'nvim-telescope/telescope.nvim', tag = '0.1.5',
    -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    
    -- Themes
	use ({

		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	})

    use "EdenEast/nightfox.nvim"

	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    use "nvim-lua/plenary.nvim"

    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { {"nvim-lua/plenary.nvim"} }
    }

	use ('mbbill/undotree')

	use('tpope/vim-fugitive')

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},
            {'neovim/nvim-lspconfig'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}

    use "numToStr/FTerm.nvim"

    use {
        "folke/zen-mode.nvim",
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    }

    use "vim-airline/vim-airline"
    use "vim-airline/vim-airline-themes"

    use {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup {
                -- config
                theme = 'hyper',
                packages = { enable = true }
            }
        end,
        requires = {'nvim-tree/nvim-web-devicons'}
    }
    
end)
