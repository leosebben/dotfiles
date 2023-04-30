-- PackerSync when save this file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup end
]])

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Mason LSP
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }

  -- Tree
  use {
	  'nvim-tree/nvim-tree.lua',
	  requires = {
		  'nvim-tree/nvim-web-devicons', -- optional
	  },
	  config = function()
		  require("nvim-tree").setup {}
	  end
  }

  -- Telescope
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Treesitter
  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = ':TSUpdate'
  }

  -- Terminal
  use {
    "NvChad/nvterm",
    config = function ()
      require("nvterm").setup()
    end,
  }

  -- Lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use { 'tpope/vim-commentary' }  -- Commentary
  use { 'ThePrimeagen/harpoon' }  -- Harpoon
  use { 'tpope/vim-surround' }    -- Surround
  use { 'mbbill/undotree' }       -- Undotree

  -- Colorscheme
  use { 'folke/tokyonight.nvim' }

end)
