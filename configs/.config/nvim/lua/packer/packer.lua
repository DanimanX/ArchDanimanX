return require('packer').startup(function()
  -- Packer can manage itself
  use 'hashivim/vim-terraform'
  -- Snippets para nvim
 -- use 'hrsh7th/cmp-vsnip'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'
  use 'onsails/lspkind-nvim'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'wbthomason/packer.nvim'
  use 'sbdchd/neoformat'
  use "lukas-reineke/lsp-format.nvim"
  --Tab arriba para VIM
  use 'bagrat/vim-buffet'
  --WIKI
  use 'vimwiki/vimwiki'
  --Ventanas flotantes
  use 'voldikss/vim-floaterm'
  -- pydock
  use {
        'heavenshell/vim-pydocstring',
        run = 'make install'
    }
  --Activar LSP nvim 
  --use {'neovim/nvim-lspconfig', branch = master, commit = '414af1b02aad0bc106967f75ed8defb1e29cb538'}
  use {'neovim/nvim-lspconfig', branch = master}
  use { "williamboman/mason.nvim" }
  use { "williamboman/mason-lspconfig.nvim" }
  use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
  -- Barra
  use 'feline-nvim/feline.nvim'
  --Git
  use 'nvim-lua/plenary.nvim'
  --Busqueda
  use 'easymotion/vim-easymotion'
  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'
  use 'nvim-telescope/telescope.nvim'
  use 'kyazdani42/nvim-web-devicons' --Iconos para telescope
  --Temas
  use "Pocco81/Catppuccino.nvim"
  use 'ghifarit53/tokyonight-vim'
  use 'EdenEast/nightfox.nvim'
  use 'shaunsingh/moonlight.nvim'
end)
