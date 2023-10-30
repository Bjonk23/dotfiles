local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()


return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use {
    'nvim-telescope/telescope.nvim', tag = "0.1.0",
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use {
    'rose-pine/neovim',
    as = 'rose-pine'
  }
  use('mbbill/undotree')
  use {
    'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use { 'folke/trouble.nvim', requires = 'nvim-tree/nvim-web-devicons' }
  use { 'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons' }
  use {
    'vonheikemen/lsp-zero.nvim',
    requires = {
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },
      { 'neovim/nvim-lspconfig' },
      { 'hrsh7th/cmp-nvim-lsp',             as = "cmp" },
      { 'hrsh7th/nvim-cmp' },
      { "L3MON4D3/LuaSnip" }
    }
  }

  use { 'nikvdp/neomux' }

  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-buffer'

  use 'nanozuki/tabby.nvim'
  use 'nvim-tree/nvim-tree.lua'
end)
