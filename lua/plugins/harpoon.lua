return {
    'ThePrimeagen/harpoon',
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    config = function()
        vim.keymap.set('n', '<leader>ha', '<cmd>lua require("harpoon.mark").add_file()<cr>', { desc = "Add harpoon mark" })
        vim.keymap.set('n', '<leader>hm', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', { desc = "Toggle harpoon menu" })
        vim.keymap.set("n", "<leader>hn", "<cmd>lua require('harpoon.ui').nav_next()<cr>", { desc = "Go to next harpoon mark" })
        vim.keymap.set("n", "<leader>hp", "<cmd>lua require('harpoon.ui').nav_prev()<cr>", { desc = "Go to previous harpoon mark" })
    end
}
