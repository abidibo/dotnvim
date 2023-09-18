return {
    'kyazdani42/nvim-tree.lua',
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    tag = 'nightly', -- optional, updated every week. (see issue #1193)
    lazy = true,
    cmd = "NvimTreeToggle",
    keys = {
        {"<c-f>", "<cmd>NvimTreeToggle<cr>"}
    },
    config = function ()
        vim.g.loaded = 1
        vim.g.loaded_netrwPlugin = 1

        require("nvim-tree").setup({
          filters = { custom = { ".pyc$" } },
          git = { enable = false },
          diagnostics = { enable = true, show_on_dirs = true },
          open_on_tab = true,
        })

        vim.keymap.set('n', '<C-m>', ':NvimTreeFindFile<CR><c-w>l')
        -- vim.keymap.set('n', '<C-f>', ':NvimTreeToggle<CR>')
    end
}
