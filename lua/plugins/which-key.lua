return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    -- enabled = false,
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 100
    end,
    opts = {
    },
    config = function()
        local wk = require("which-key")
        wk.register({
            ["<leader>f"] = { name = "+ Find" },
            ["<leader>e"] = { name = "+ File explorer" },
            ["<leader>b"] = { name = "+ Buffers" },
            ["<leader>t"] = { name = "+ Tabs" },
            ["<leader>c"] = { name = "+ Code" },
            ["<leader>x"] = { name = "+ Exec" },
            ["<leader>w"] = { name = "+ Web" },
            ["<leader>g"] = { name = "+ Git view" },
            ["<leader>h"] = { name = "+ Harpoon" },
            ["<leader>s"] = { name = "+ System" },
            ["<leader>v"] = { name = "+ Misc" },
            ["\\g"] = { name = "+ Git" },
        })
    end
}
