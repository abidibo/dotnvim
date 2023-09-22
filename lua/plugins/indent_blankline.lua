return {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
        vim.opt.termguicolors = true
        vim.cmd [[highlight IndentBlanklineIndent1 guifg=#222222 gui=nocombine]]

        -- vim.opt.list = true

        require("indent_blankline").setup {
            char_highlight_list = {
                "IndentBlanklineIndent1",
            },
        }
    end
}
