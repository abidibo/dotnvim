return {
    -- {
    --     "folke/tokyonight.nvim",
    --     config = function ()
    --       require("tokyonight").setup({
    --           sidebars = { "qf", "help", "NvimTree" },
    --       })
    -- vim.cmd[[colorscheme tokyonight-night]]
    --     end
    -- },
    {
        "rebelot/kanagawa.nvim",
        config = function()
            require('kanagawa').setup({
                compile = false, -- enable compiling the colorscheme
                undercurl = true, -- enable undercurls
                commentStyle = { italic = true },
                functionStyle = {},
                keywordStyle = { italic = true },
                statementStyle = { bold = true },
                typeStyle = {},
                transparent = false, -- do not set background color
                dimInactive = false, -- dim inactive window `:h hl-NormalNC`
                terminalColors = true, -- define vim.g.terminal_color_{0,17}
                colors = { -- add/modify theme and palette colors
                    palette = {},
                    theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
                },
                overrides = function(colors) -- add/modify highlights
                    return {}
                end,
                background = { -- map the value of 'background' option to a theme
                    dark = "dragon", -- try "dragon" !
                    light = "lotus"
                },
            })
            vim.cmd("colorscheme kanagawa")
        end
    },
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
