local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

vim.cmd [[
augroup packer_user_config
autocmd!
autocmd BufWritePost packer.lua source <afile> | PackerSync
augroup end
]]

local success, packer = pcall(require, 'packer')
if not success then
	return
end

packer.init {
	display = {
		open_fn = function()
			return require('packer.util').float {border='rounded'}
		end,
	},
}

return packer.startup(function(use)

	use 'folke/tokyonight.nvim'
	use 'shaunsingh/moonlight.nvim'
	use 'drewtempelmeyer/palenight.vim'
	use 'arcticicestudio/nord-vim'
  use 'catppuccin/nvim'

	use 'wbthomason/packer.nvim'
	use 'nvim-lua/popup.nvim' 
	use 'nvim-lua/plenary.nvim' 

	use 'windwp/nvim-autopairs' 
  use 'ap/vim-css-color'
  use 'mattn/emmet-vim'
	use 'numToStr/Comment.nvim' 

	use 'kyazdani42/nvim-web-devicons'
	use 'kyazdani42/nvim-tree.lua'

	use 'nvim-lualine/lualine.nvim'

	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'saadparwaiz1/cmp_luasnip'

	use 'L3MON4D3/LuaSnip'
	use 'rafamadriz/friendly-snippets'

	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'

  use 'jose-elias-alvarez/null-ls.nvim'

	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
	}

	use 'JoosepAlviste/nvim-ts-context-commentstring'
	use 'p00f/nvim-ts-rainbow'

  use 'folke/which-key.nvim'

	-- transition plugins
	-- Plug 'tpope/vim-surround' 
	-- Plug 'tpope/vim-commentary'
	-- Plug 'preservim/tagbar'

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require('packer').sync()
	end
end)

