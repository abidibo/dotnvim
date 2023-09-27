return {
    'stevearc/aerial.nvim',
    enabled=false,
    opts = {},
    -- Optional dependencies
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons"
    },
    config = function()
        vim.keymap.set('n', '<leader>8', '<cmd>AerialToggle!<CR>')
    end
}
