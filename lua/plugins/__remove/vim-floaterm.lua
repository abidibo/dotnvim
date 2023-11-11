return {
    'voldikss/vim-floaterm',
    config = function ()
        vim.api.nvim_set_keymap("n", "<leader>xf", ":FloatermNew ranger<CR>", {})
        vim.api.nvim_set_keymap("n", "<leader>xg", ":FloatermNew lazygit<CR>", {})
        vim.api.nvim_set_keymap("n", "<leader>xm", ":FloatermNew ncmpcpp<CR>", {})
        vim.api.nvim_set_keymap("n", "<leader>xt", ":FloatermNew btm<CR>", {})
        vim.api.nvim_set_keymap("n", "<leader>xs", ":FloatermNew spt<CR>", {})

        vim.g.floaterm_autoinsert = 1
        vim.g.floaterm_autoclose = 1
        vim.g.floaterm_width = 0.8
        vim.g.floaterm_height = 0.8
    end
}
