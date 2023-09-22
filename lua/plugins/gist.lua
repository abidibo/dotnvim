return {
    {
        "Rawnly/gist.nvim",
        cmd = { "GistCreate", "GistCreateFromFile", "GistsList" },
        config = function()
            require("gist").setup({
                list = {
                    -- If there are multiple files in a gist you can scroll them,
                    -- with vim-like bindings n/p next previous
                    mappings = {
                        next_file = "<C-n>",
                        prev_file = "<C-p>"
                    }
                }
            })
        end
    },
    -- `GistsList` opens the selected gif in a terminal buffer,
    -- nvim-unception uses neovim remote rpc functionality to open the gist in an actual buffer
    -- and prevents neovim buffer inception
    {
        "samjwill/nvim-unception",
        lazy = false,
        init = function() vim.g.unception_block_while_host_edits = true end
    }
}
