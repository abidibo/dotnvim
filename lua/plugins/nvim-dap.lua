return {
    'mfussenegger/nvim-dap',
    config = function ()
        vim.g.vimspector_base_dir = '/home/abidibo/.config/nvim/plugged/vimspector'
        vim.g.vimspector_enable_mappings = 'HUMAN'

        vim.api.nvim_set_keymap("n", "<F5>", ":lua require'dap'.continue()<cr>", { noremap = true })
        vim.api.nvim_set_keymap("n", "<F8>", ":lua require'dap'.toggle_breakpoint()<cr>", { noremap = true })
        vim.api.nvim_set_keymap("n", "<leader>so", ":lua require'dap'.step_over()<cr>", { noremap = true })
        vim.api.nvim_set_keymap("n", "<leader>si", ":lua require'dap'.step_into()<cr>", { noremap = true })
        vim.api.nvim_set_keymap("n", "<leader>su", ":lua require'dap'.step_out()<cr>", { noremap = true })

        -- local dap = require('dap')
        -- dap.set_log_level('TRACE')
        -- dap.configurations.javascriptreact = {
        --   {
        --     type = 'chrome';
        --   },
        -- }
        -- dap.adapters.chrome = {
        --   type = "executable",
        --   command = "node",
        --   args = { vim.fn.stdpath("data") .. "/mason/packages/chrome-debug-adapter/out/src/chromeDebug.js" },
        -- }
    end
}
