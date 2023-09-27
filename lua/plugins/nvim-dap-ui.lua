return {
    "rcarriga/nvim-dap-ui", 
    dependencies = {"mfussenegger/nvim-dap"},
    config = function()
        require("dapui").setup()
        local dapui = require("dapui")
        vim.api.nvim_set_keymap("n", "<leader>cbo", ":lua require'dapui'.open()<cr>", {})
        vim.api.nvim_set_keymap("n", "<leader>cbc", ":lua require'dapui'.close()<cr>", {})
        -- local dap, dapui = require("dap"), require("dapui")
        -- dap.listeners.after.event_initialized["dapui_config"] = function()
        --   dapui.open()
        -- end
        -- dap.listeners.before.event_terminated["dapui_config"] = function()
        --   dapui.close()
        -- end
        -- dap.listeners.before.event_exited["dapui_config"] = function()
        --   dapui.close()
        -- end
    end,
}
