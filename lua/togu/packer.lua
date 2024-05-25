-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    requires = { {'nvim-lua/plenary.nvim'} }
  }


use('nvim-treesitter/nvim-treesitter', {run=':TSUpdate'})

use 'rose-pine/neovim'

  -- Configuration for the rose-pine theme
  require("rose-pine").setup({
    dim_inactive_windows = false,
    extend_background_behind_borders = true,

    enable = {
        terminal = true,
        legacy_highlights = true,
        migrations = true,
    },

    styles = {
        bold = true,
        italic = true,
        transparency = false,
    },
  })

  vim.cmd("colorscheme rose-pine-moon") -- Activate rose-pine colorscheme


end)
