return {
    'mbbill/undotree',
    config = function()
        vim.keymap.set("n", "<leader>vu", "<cmd>UndotreeToggle<cr>", { desc = "Toggle undotree" })
    end
}
