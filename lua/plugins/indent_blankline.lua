return {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
        -- char = "▏",
        char = "│",
        filetype_exclude = {
            "help",
            "alpha",
            "dashboard",
            "NvimTree",
            "Trouble",
            "lazy",
            "mason",
            "toggleterm",
            "lazyterm",
        },
        show_trailing_blankline_indent = false,
        show_current_context = false,
    },
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
