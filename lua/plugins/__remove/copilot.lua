return {
    'github/copilot.vim',
    enabled = false,
    config = function ()
        vim.api.nvim_set_keymap('i', '<c-space>', 'copilot#Accept("<CR>")', { noremap=true, expr=true, silent=true })
        vim.api.nvim_set_keymap("i", "<s-tab>", "<Plug>(copilot-next)", {})
        vim.api.nvim_set_keymap("n", "<leader>cp", ":Copilot<CR>", { noremap = true })

        vim.g.copilot_no_tab_map = true
    end
}
