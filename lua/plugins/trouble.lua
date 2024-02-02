return {
    "folke/trouble.nvim",
    enabled = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        vim.keymap.set("n", "<leader>ctx", function() require("trouble").toggle() end, { desc = "Toggle trouble" }),
        vim.keymap.set("n", "<leader>ctw", function() require("trouble").toggle("workspace_diagnostics") end, { desc = "Toggle workspace diagnostics" }),
        vim.keymap.set("n", "<leader>ctd", function() require("trouble").toggle("document_diagnostics") end, { desc = "Toggle document diagnostics" }),
        vim.keymap.set("n", "<leader>ctq", function() require("trouble").toggle("quickfix") end, { desc = "Toggle quickfix" }),
        vim.keymap.set("n", "<leader>ctl", function() require("trouble").toggle("loclist") end, { desc = "Toggle loclist" }),
        vim.keymap.set("n", "<leader>ctr", function() require("trouble").toggle("lsp_references") end, { desc = "Toggle lsp references" }),
    },
}
