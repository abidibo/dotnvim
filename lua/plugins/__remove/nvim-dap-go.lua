return {
    'leoluz/nvim-dap-go',
    config = function()
        require('dap-go').setup {
            dap_configurations = {
                {
                    type = "go",
                    name = "Attach remote",
                    mode = "remote",
                    request = "attach",
                    -- tell which host and port to connect to
                    connect = {
                        host = "127.0.0.1",
                        port = "9004"
                    },
                    substitutepath = { {
                        from = vim.fn.getcwd(),
                        to = "/go/src/app",
                    } },
                },
            },
            delve = {
                port = "9004"
            },
        }
    end
}
