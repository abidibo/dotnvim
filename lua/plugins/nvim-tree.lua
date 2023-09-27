return {
    'kyazdani42/nvim-tree.lua',
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    tag = 'nightly', -- optional, updated every week. (see issue #1193)
    lazy = true,
    cmd = "NvimTreeToggle",
    keys = {
        { "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = 'Toggle file explorer' } }
    },
    config = function()
        vim.g.loaded = 1
        vim.g.loaded_netrwPlugin = 1

        require("nvim-tree").setup({
            filters = { custom = { ".pyc$" } },
            git = { enable = false },
            diagnostics = { enable = true, show_on_dirs = true },
            open_on_tab = true,
        })

        vim.keymap.set('n', '<leader>fm', ':NvimTreeFindFile<CR><c-w>l', { desc = 'Find buffer in file explorer' })
        -- vim.keymap.set('n', '<C-f>', ':NvimTreeToggle<CR>')
        vim.cmd("hi NvimTreeNormal guibg=#101010")
    end
}
