-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packad packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- telescope (fizzy finder)
    use {
	    'nvim-telescope/telescope.nvim', tag = '0.1.1',
	    -- or                            , branch = '0.1.x',
	    requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- harpoon (fast file switcher)
    use 'ThePrimeagen/harpoon'

    -- treesitter (enhanced syntax highlighting)
    use {
	    'nvim-treesitter/nvim-treesitter',
	    run = ':TSUpdate'
    }
    use 'nvim-treesitter/playground'

	-- fast comment 
	use 'tpope/vim-commentary'

    -- undotree (file undo tree)
    use 'mbbill/undotree'

    -- fugitive
    use 'tpope/vim-fugitive'

	-- lualine
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	-- fancy startup screen
	use 'mhinz/vim-startify'

    -- lsp
    use {
	    'VonHeikemen/lsp-zero.nvim',
	    branch = 'v1.x',
	    requires = {
		    -- LSP Support
		    {'neovim/nvim-lspconfig'},             -- Required
		    {'williamboman/mason.nvim'},           -- Optional
		    {'williamboman/mason-lspconfig.nvim'}, -- Optional

		    -- Autocompletion
		    {'hrsh7th/nvim-cmp'},         -- Required
		    {'hrsh7th/cmp-nvim-lsp'},     -- Required
		    {'hrsh7th/cmp-buffer'},       -- Optional
		    {'hrsh7th/cmp-path'},         -- Optional
		    {'saadparwaiz1/cmp_luasnip'}, -- Optional
		    {'hrsh7th/cmp-nvim-lua'},     -- Optional

		    -- Snippets
		    {'L3MON4D3/LuaSnip'},             -- Required
		    {'rafamadriz/friendly-snippets'}, -- Optional
	    }
    }

    -- rose-pine color scheme
    use {
	    'rose-pine/neovim',
	    as = 'rose-pine',
	    config = function()
		    require("rose-pine").setup()
		    vim.cmd('colorscheme rose-pine')
	    end
    }

    -- vscode color scheme
    use 'Mofiqul/vscode.nvim'
end)

