vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'bling/vim-airline'
	use 'nvim-lualine/lualine.nvim'
	use 'chrisbra/csv.vim'
	use 'mhinz/vim-startify'
	use'kyazdani42/nvim-web-devicons'
	use 'uga-rosa/ccc.nvim'
	use 'b3nj5m1n/kommentary'
	use 'Yggdroot/indentLine'
	use 'nvim-tree/nvim-tree.lua'
  use 'tpope/vim-fugitive'
	use 'mbbill/undotree'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
		}
	-- Colors
	use 'navarasu/onedark.nvim'	
	use 'Abstract-IDE/Abstract-cs'
	use 'bluz71/vim-moonfly-colors'
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	-- autocompletion
	use {
  'VonHeikemen/lsp-zero.nvim',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

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
end)
