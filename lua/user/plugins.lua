local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  -- My plugins here
  use 'wbthomason/packer.nvim'

  -- Starting
  use 'goolord/alpha-nvim'

  -- Tree explorer
  use 'kyazdani42/nvim-tree.lua'

  -- Icons
  use 'kyazdani42/nvim-web-devicons'

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'p00f/nvim-ts-rainbow'

  -- Comments
  use 'numToStr/Comment.nvim'
  use 'JoosepAlviste/nvim-ts-context-commentstring'

  -- Git
  use 'lewis6991/gitsigns.nvim'

  -- Terminal
  use "akinsho/toggleterm.nvim"

  -- Formatting
  use 'jose-elias-alvarez/null-ls.nvim'

  -- Movement
  use 'justinmk/vim-sneak'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 
      {'nvim-lua/plenary.nvim'},
      {'nvim-telescope/telescope-media-files.nvim'},
    }
  }

  -- Lualine --
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    } 
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'  }

  -- Autocomplete --
  use'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'windwp/nvim-autopairs'

    -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer

  -- Snippets --
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use "rafamadriz/friendly-snippets"

  -- Themes 
  use 'folke/tokyonight.nvim'
  use 'arcticicestudio/nord-vim'
  use 'dracula/vim'

  -- Indent
  use 'lukas-reineke/indent-blankline.nvim'

  -- Whichkey
  use 'folke/which-key.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
