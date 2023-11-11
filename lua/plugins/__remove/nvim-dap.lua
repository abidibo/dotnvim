return {
    'mfussenegger/nvim-dap',
    -- enabled = false,
    config = function()
        vim.g.vimspector_base_dir = '/home/abidibo/.config/nvim/plugged/vimspector'
        vim.g.vimspector_enable_mappings = 'HUMAN'

        vim.api.nvim_set_keymap("n", "<F5>", ":lua require'dap'.continue()<cr>", { noremap = true })
        vim.api.nvim_set_keymap("n", "<F8>", ":lua require'dap'.toggle_breakpoint()<cr>", { noremap = true })
        vim.api.nvim_set_keymap("n", ",o", ":lua require'dap'.step_over()<cr>", { noremap = true })
        vim.api.nvim_set_keymap("n", ",i", ":lua require'dap'.step_into()<cr>", { noremap = true })
        vim.api.nvim_set_keymap("n", ",u", ":lua require'dap'.step_out()<cr>", { noremap = true })

        local dap = require('dap')

        dap.adapters.go = {
            type = "server",
            port = '9004',
            executable = {
              command = "dlv",
              args = { "dap", "-l", "127.0.0.1:9004"},
            },
        }

        dap.configurations['python.django'] = {
            {
                type = 'python',
                request = 'attach',
                name = 'Attach remote',
                connect = function()
                    local host = vim.fn.input('Host [127.0.0.1]: ')
                    host = host ~= '' and host or '127.0.0.1'
                    local port = tonumber(vim.fn.input('Port [5678]: ')) or 5678
                    return { host = host, port = port }
                end,
            },
        }

        dap.configurations.javascriptreact = {
          {
            type = 'chrome';
          },
        }
        dap.adapters.chrome = {
          type = "executable",
          command = "node",
          args = { vim.fn.stdpath("data") .. "/mason/packages/chrome-debug-adapter/out/src/chromeDebug.js" },
        }
    end
}
