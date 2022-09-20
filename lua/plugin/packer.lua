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
  use 'joshdick/onedark.vim'

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

  -- sidebar
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  require("plugin/nvim-tree")

  -- tasks
  use 'preservim/vimux'
  use 'skywind3000/asynctasks.vim'
  use 'skywind3000/asyncrun.vim'

  -- code completion and stuff
  use {'neoclide/coc.nvim', branch = 'release'}
  require('plugin/coc')
  use 'SirVer/ultisnips'
  use 'mlaursen/vim-react-snippets'
  use 'honza/vim-snippets'
  use 'mattn/emmet-vim'

  end
)
