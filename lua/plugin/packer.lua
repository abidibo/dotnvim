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

  -- startify
  use 'mhinz/vim-startify'
  require("plugin/vim-startify")

  -- local vimrc
  use 'MarcWeber/vim-addon-local-vimrc'

  -- fuzzy finder
  use {
    'junegunn/fzf',
    run = './install --bin',
  }
  use {
    'ibhagwan/fzf-lua',
    -- optional for icon support
    requires = { 'kyazdani42/nvim-web-devicons' },
  }
  require('plugin/fzf-lua')

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
  use 'webdevel/tabulous'
  require("plugin/tabulous")
  use 'christoomey/vim-tmux-navigator'

  -- Clipboard
  use {
    'AckslD/nvim-neoclip.lua',
    requires = { 'ibhagwan/fzf-lua' },
  }
  require("plugin/nvim-neoclip")

  -- history
  use 'sjl/gundo.vim'
  require("plugin/gundo")

  -- tagbar
  use 'preservim/tagbar'
  require("plugin/tagbar")

  -- tasks
  use 'preservim/vimux'
  use 'skywind3000/asynctasks.vim'
  use 'skywind3000/asyncrun.vim'
  use 'voldikss/vim-floaterm'
  require("plugin/vim-floaterm")

  -- syntax
  use 'sheerun/vim-polyglot'

  -- code completion and stuff
  use {'neoclide/coc.nvim', branch = 'release'}
  require('plugin/coc')
  use 'SirVer/ultisnips'
  -- use 'mlaursen/vim-react-snippets'
  use 'honza/vim-snippets'
  use 'mattn/emmet-vim'
  use 'github/copilot.vim'
  require("plugin/copilot")

  -- debugger
  use 'puremourning/vimspector'
  require("plugin/vimspector")

  -- css
  use 'ap/vim-css-color'

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

  -- utils
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'tpope/vim-repeat'
  use 'RRethy/vim-illuminate'
  use 'tyru/open-browser.vim'

  end
)
