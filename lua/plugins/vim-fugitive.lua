return {
    'tpope/vim-fugitive',
    config = function ()
        vim.api.nvim_set_keymap("n", "\\ga", ":Git add %<CR>", { noremap = true })
        vim.api.nvim_set_keymap("n", "\\gs", ":Git<CR>", { noremap = true })
        vim.api.nvim_set_keymap("n", "\\gc", ":Git commit -v -q<CR>", { noremap = true })
        vim.api.nvim_set_keymap("n", "\\gcf", ":Gcommit %<CR>", { noremap = true })
        vim.api.nvim_set_keymap("n", "\\gt", ":Gcommit -v -q %:p<CR>", { noremap = true })
        vim.api.nvim_set_keymap("n", "\\ge", ":Gedit<CR>", { noremap = true })
        vim.api.nvim_set_keymap("n", "\\gr", ":Gread<CR>", { noremap = true })
        vim.api.nvim_set_keymap("n", "\\gw", ":Gwrite<CR><CR>", { noremap = true })
        vim.api.nvim_set_keymap("n", "\\glog", ":0Gclog<CR>", { noremap = true })
        vim.api.nvim_set_keymap("n", "\\ggrep", ":Ggrep<Space>", { noremap = true })
        vim.api.nvim_set_keymap("n", "\\gm", ":Gmove<Space>", { noremap = true })
        vim.api.nvim_set_keymap("n", "\\gb", ":Git branch<Space>", { noremap = true })
        vim.api.nvim_set_keymap("n", "\\go", ":Git checkout<Space>", { noremap = true })
        vim.api.nvim_set_keymap("n", "\\gp", ":Git push<CR>", { noremap = true })
        vim.api.nvim_set_keymap("n", "\\gl", ":Git pull<CR>", { noremap = true })
        vim.api.nvim_set_keymap("n", "\\gd", ":Gvdiffsplit!<CR>", { noremap = true })
        vim.api.nvim_set_keymap("n", "gdh", ":diffget //2<CR>", { noremap = true })
        vim.api.nvim_set_keymap("n", "gdl", ":diffget //3<CR>", { noremap = true })
    end
}
