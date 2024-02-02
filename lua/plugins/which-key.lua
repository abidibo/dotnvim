return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    -- enabled = false,
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 500
    end,
    opts = {
    },
    config = function()
        local wk = require("which-key")
        wk.register({
            ["<leader>f"] = { name = "+ Find" },
            ["<leader>fg"] = { name = "+ Git" },
            ["<leader>e"] = { name = "+ File explorer" },
            ["<leader>b"] = { name = "+ Buffers" },
            ["<leader>t"] = { name = "+ Tabs" },
            ["<leader>c"] = { name = "+ Code" },
            ["<leader>cb"] = { name = "+ Dap" },
            ["<leader>cw"] = { name = "+ Workspace" },
            ["<leader>x"] = { name = "+ Exec" },
            ["<leader>w"] = { name = "+ Web" },
            ["<leader>h"] = { name = "+ Harpoon" },
            ["<leader>s"] = { name = "+ System" },
            ["<leader>v"] = { name = "+ Misc" },
            ["<leader>g"] = { name = "+ Git" },
            ["<leader>ct"] = { name = "+ Trouble" },
        })
    end
}
