-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

    -- Telescope: Fuzzy Finder
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

    -- Kanagawa: Color Scheme
	use {
		"rebelot/kanagawa.nvim",
		as = 'kanagawa'
	}

    -- Treesitter: Syntax Highlighting
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

    -- Vim Fugitive: Git Integration
	use 'tpope/vim-fugitive'
    use 'tpope/vim-commentary'

    -- LSP Zero: Language Server Protocol Configuration
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			--- Uncomment the two plugins below if you want to manage the language servers from neovim
			-- {'williamboman/mason.nvim'},
			-- {'williamboman/mason-lspconfig.nvim'},

			{'neovim/nvim-lspconfig', tag = 'v0.1.7'},
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
            ('jose-elias-alvarez/null-ls.nvim'),
            ('MunifTanjim/prettier.nvim'),
		}
	}

    -- Markdown Preview: Live Markdown Preview
	-- install without yarn or npm
	use({
		"iamcco/markdown-preview.nvim",
		run = function() vim.fn["mkdp#util#install"]() end,
	})

    -- Mason: Package Manager for Neovim
    use { "williamboman/mason.nvim", tag = 'v1.10.0' }
    use { "williamboman/mason-lspconfig.nvim", tag = 'v1.24.0' }

    -- Github Copilot: AI Pair Programmer
    use {
        "github/copilot.vim"
    }

    -- Vim Rails: Ruby on Rails Support
    use {
        "tpope/vim-rails"
    }

    -- Dashboard: Start Screen for Neovim
    use {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup {
                -- config
                theme = 'doom'
            }
        end,
        requires = {'nvim-tree/nvim-web-devicons'}
    }

   -- UndoTree: Visualize Undo History
    use {
        'mbbil/undotree',
    }
end)
