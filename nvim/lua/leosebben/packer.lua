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

  -- LSP
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }

  -- File Explore
  use {
	  'nvim-tree/nvim-tree.lua',
	  requires = {
		  'nvim-tree/nvim-web-devicons', -- optional
	  },
  }

  -- Fuzzy Finder
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Syntax Highlighting
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

  -- Status Line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- Git
  use { 'tpope/vim-fugitive' }
  use { 'lewis6991/gitsigns.nvim' }

  -- Colorscheme
  use { 'folke/tokyonight.nvim' }
  use { "catppuccin/nvim", as = "catppuccin" }

  -- Shotcuts
  use { 'tpope/vim-commentary' }    -- Commentary
  use { 'tpope/vim-surround' }      -- Surround
  use { 'ThePrimeagen/harpoon' }    -- Harpoon
  use { 'mbbill/undotree' }         -- Undotree

end)
