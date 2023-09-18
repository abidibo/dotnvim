return {
    "jay-babu/mason-nvim-dap.nvim",
    config = function ()
        require('mason-nvim-dap').setup {
          automatic_setup = true,
          ensure_installed = {
            'chrome',
            'js',
          },
          handlers = {},
        }
    end
}
