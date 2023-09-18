return {
    'theHamsta/nvim-dap-virtual-text',
    config = function ()
        require("nvim-dap-virtual-text").setup()
        vim.g.dap_virtual_text = true
    end
}
