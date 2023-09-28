return {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
        char = "│",
    },
    config = function()
        vim.opt.termguicolors = true
        vim.cmd [[highlight IndentBlanklineIndent1 guifg=#222222 gui=nocombine]]
        vim.cmd [[highlight IndentBlanklineContextChar guifg=#666666 gui=nocombine]]

        vim.g.indentLine_fileTypeExclude = { "help", "startify", "NvimTree", "Trouble", "lazy", "mason", "toggleterm",
            "lazyterm" }

        local highlight = {
            "Dft",
        }

        local hooks = require "ibl.hooks"
        hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
            vim.api.nvim_set_hl(0, "Dft", { fg = "#222222" })
        end)

        require("ibl").setup {
            indent = { highlight = highlight },
            show_current_context = true,
            show_current_context_start = true,
        }
    end
}
