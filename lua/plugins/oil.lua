return {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = true,
    cmd = "Oil",
    keys = {
        {"<leader>-", "<cmd>Oil<cr>"}
    },
    config = function ()
        require("oil").setup()
    end
}
