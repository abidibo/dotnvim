return {
    'mfussenegger/nvim-dap-python',
    -- lazy = true,
    -- ft = { 'python', 'python.django' },
    config = function()
        require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')
    end,
}
