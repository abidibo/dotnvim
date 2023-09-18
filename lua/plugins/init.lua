return {
  {
      "folke/tokyonight.nvim",
      lazy = false,
      priority = 1000,
      opts = {},
      config = function () 
	vim.cmd[[colorscheme tokyonight]]
      end
  },
  "christoomey/vim-tmux-navigator",
  "skywind3000/asynctasks.vim",
  "skywind3000/asyncrun.vim",
  "GustavoKatel/telescope-asynctasks.nvim",
  "tpope/vim-repeat",
  "tyru/open-browser.vim",
  "terryma/vim-multiple-cursors",
  "aklt/plantuml-syntax",
  "weirongxu/plantuml-previewer.vim",
  "junegunn/gv.vim",
  "sindrets/diffview.nvim",
  "ap/vim-css-color",
  "tpope/vim-commentary",
  "tpope/vim-surround",
  "lukas-reineke/indent-blankline.nvim",
  "tpope/vim-dadbod",
  "kristijanhusak/vim-dadbod-ui",
  "kristijanhusak/vim-dadbod-completion",
}
