return {
    'rest-nvim/rest.nvim',
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function ()
        vim.api.nvim_set_keymap("n", "<leader>wr", "<Plug>RestNvim", { silent = true })
    end
}
