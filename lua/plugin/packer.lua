local vim = vim
local execute = vim.api.nvim_command
local fn = vim.fn
-- ensure that packer is installed
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
    execute 'packadd packer.nvim'
end
vim.cmd('packadd packer.nvim')
local packer = require'packer'
local util = require'packer.util'
packer.init({
  package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')
})
--- startup and add configure plugins
packer.startup(function()
  local use = use

  -- colorscheme
  use 'navarasu/onedark.nvim'
  use 'aktersnurra/no-clown-fiesta.nvim'
  use "rebelot/kanagawa.nvim"
  use 'folke/tokyonight.nvim'

  -- startify
  use 'mhinz/vim-startify'
  require("plugin/vim-startify")

  -- local vimrc
  use 'MarcWeber/vim-addon-local-vimrc'

  -- fuzzy finder
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  require("plugin/telescope")
  -- filesystem
  use { 'stevearc/oil.nvim' }
  require("plugin/oil")
  use 'tpope/vim-eunuch'

  -- sidebar
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  require("plugin/nvim-tree")

  -- tabs
  use 'nanozuki/tabby.nvim'
  require("plugin/tabby")
  -- use 'webdevel/tabulous'
  -- require("plugin/tabulous")
  use 'christoomey/vim-tmux-navigator'

  -- Clipboard
  use {
    'AckslD/nvim-neoclip.lua',
    requires = { 'ibhagwan/fzf-lua' },
  }
  require("plugin/nvim-neoclip")

  -- history
  use 'mbbill/undotree'
  require("plugin/undotree")

  -- status bar
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  require("plugin/lualine")

  -- tagbar
  use 'preservim/tagbar'
  require("plugin/tagbar")

  -- pairs

  use "windwp/nvim-autopairs"
  require("plugin/nvim-autopairs")
  use 'windwp/nvim-ts-autotag'
  require("plugin/nvim-ts-autotag")

  -- tasks
  use 'preservim/vimux'
  use 'skywind3000/asynctasks.vim'
  use 'skywind3000/asyncrun.vim'
  use 'voldikss/vim-floaterm'
  require("plugin/vim-floaterm")
  use 'GustavoKatel/telescope-asynctasks.nvim'

  -- syntax
  -- use 'sheerun/vim-polyglot'

  -- code completion and stuff
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
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
  require("plugin/lsp")
  use('jose-elias-alvarez/null-ls.nvim')
  require("plugin/null-ls")
  use('MunifTanjim/prettier.nvim')
  require("plugin/nvim-prettier")

  use 'mattn/emmet-vim'
  require("plugin/emmet")
  use 'github/copilot.vim'
  require("plugin/copilot")

  -- debugger
  use 'puremourning/vimspector'
  require("plugin/vimspector")

  -- search and replace
  use 'nvim-pack/nvim-spectre'
  require("plugin/nvim-spectre")

  -- keybindings
  use "folke/which-key.nvim"
  -- require("plugin/which-key")

  -- css
  use 'ap/vim-css-color'

  -- commentary
  use 'tpope/vim-commentary'

  -- surroundings
  use 'tpope/vim-surround'

  -- indentation
  use "lukas-reineke/indent-blankline.nvim"

  -- docs
  use {
    'kkoomen/vim-doge',
    run = ':call doge#install()'
  }
  require("plugin/doge")

  -- git
  use 'tpope/vim-fugitive'
  require("plugin/fugitive")
  use 'junegunn/gv.vim'
  use "sindrets/diffview.nvim" 
  use "sindrets/diffview.nvim" 
  -- use "lewis6991/gitsigns.nvim"
  -- require("plugin/gitsigns")

  -- markdown
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  -- go
  use 'fatih/vim-go'
  require("plugin/vim-go")

  -- motion
  use 'ggandor/leap.nvim'
  require("plugin/leap")

  -- plantuml
  use 'aklt/plantuml-syntax'
  use 'weirongxu/plantuml-previewer.vim'

  -- api utils
  use {
    'rest-nvim/rest.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
    }
  }
  require("plugin/rest")

  -- syntax
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use({
    "nvim-treesitter/nvim-treesitter-textobjects",
    after = "nvim-treesitter",
    requires = "nvim-treesitter/nvim-treesitter",
  })
  require("plugin/treesitter")

  -- utils
  use 'tpope/vim-repeat'
  use 'RRethy/vim-illuminate'
  require("plugin/vim-illuminate")
  use 'tyru/open-browser.vim'
  use 'terryma/vim-multiple-cursors'

  end
)
