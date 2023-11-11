return {
    'tpope/vim-fugitive',
    config = function ()
        vim.api.nvim_set_keymap("n", "<leader>ga", ":Git add %<CR>", { noremap = true })
        vim.api.nvim_set_keymap("n", "<leader>gs", ":Git<CR>", { noremap = true })
        vim.api.nvim_set_keymap("n", "<leader>gc", ":Git commit -v -q<CR>", { noremap = true })
        vim.api.nvim_set_keymap("n", "<leader>gcf", ":Gcommit %<CR>", { noremap = true })
        vim.api.nvim_set_keymap("n", "<leader>gt", ":Gcommit -v -q %:p<CR>", { noremap = true })
        vim.api.nvim_set_keymap("n", "<leader>ge", ":Gedit<CR>", { noremap = true })
        vim.api.nvim_set_keymap("n", "<leader>gr", ":Gread<CR>", { noremap = true })
        vim.api.nvim_set_keymap("n", "<leader>gw", ":Gwrite<CR><CR>", { noremap = true })
        vim.api.nvim_set_keymap("n", "<leader>glog", ":0Gclog<CR>", { noremap = true })
        vim.api.nvim_set_keymap("n", "<leader>ggrep", ":Ggrep<Space>", { noremap = true })
        vim.api.nvim_set_keymap("n", "<leader>gm", ":Gmove<Space>", { noremap = true })
        vim.api.nvim_set_keymap("n", "<leader>gb", ":Git branch<Space>", { noremap = true })
        vim.api.nvim_set_keymap("n", "<leader>go", ":Git checkout<Space>", { noremap = true })
        vim.api.nvim_set_keymap("n", "<leader>gp", ":Git push<CR>", { noremap = true })
        vim.api.nvim_set_keymap("n", "<leader>gl", ":Git pull<CR>", { noremap = true })
        vim.api.nvim_set_keymap("n", "<leader>gd", ":Gvdiffsplit!<CR>", { noremap = true })
        vim.api.nvim_set_keymap("n", "<leader>gdh", ":diffget //2<CR>", { noremap = true })
        vim.api.nvim_set_keymap("n", "<leader>gdl", ":diffget //3<CR>", { noremap = true })
    end
}
